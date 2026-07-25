use strict; use warnings;
my $f='index.html'; local $/; open my $in,'<',$f or die $!; my $s=<$in>; close $in;
sub rep {
  my($a,$b,$label)=@_;
  return if index($s,$b) >= 0; # already upgraded; keep reruns safe
  my $n=($s=~s/\Q$a\E/$b/);
  die "missing $label\n" unless $n==1;
}
my ($a,$b);
$a='</style>';
$b=<<'B';
.dragonStatus{position:absolute;left:50%;top:57px;translate:-50%;z-index:6;background:linear-gradient(180deg,#63110d,#260607);border:2px solid #ffb43b;border-radius:12px;padding:6px 11px;text-align:center;font-size:12px;font-weight:1000;box-shadow:0 0 20px #ff431d;display:none}.dragonStatus b{color:#ffe66d}.tile.flameLane{outline:3px solid #ff5b28;animation:lanePulse .65s infinite alternate}.tile.flameLane:after{content:'🔥';position:absolute;font-size:12px;right:1px;top:0}.tile{position:relative}@keyframes lanePulse{to{outline-color:#ffe66d;filter:brightness(1.25)}}
</style>
B
chomp $b; rep($a,$b,'style');
$a='<div id=warn class=warn></div>';
$b='<div id=warn class=warn></div><div id=dragonStatus class=dragonStatus></div>';
rep($a,$b,'dragon status dom');
$a="let B=[],lvl=0,moves=0,goals=[],startGoals=[],locks=0,startLocks=0,sel=null,mode='play',score=0,surge=4,crown=0,streak=0,unlocked=+(localStorage.krUnlock||1),stars=JSON.parse(localStorage.krStars||'[]'),tools={};";
$b="let B=[],lvl=0,moves=0,goals=[],startGoals=[],locks=0,startLocks=0,sel=null,mode='play',score=0,surge=4,crown=0,streak=0,unlocked=+(localStorage.krUnlock||1),stars=JSON.parse(localStorage.krStars||'[]'),tools={},dragonTurn=0,dragonLane=3,dragonBreaths=0,dragonGuard=0;";
rep($a,$b,'state vars');
$a='tools={hammer:1,splash:1,key:1};let H=';
$b='tools={hammer:1,splash:1,key:1};dragonTurn=0;dragonLane=R(7);dragonBreaths=0;dragonGuard=0;let H=';
rep($a,$b,'start reset');
$a=q~$('danger').className='danger '+l[2];$('warn').textContent=mode=='play'?`⚠ ${l[8]} in ${surge} moves`:'';~;
$b=q~$('danger').className='danger '+l[2];$('warn').textContent=mode=='play'?`⚠ ${l[8]} in ${surge} moves`:'';$('dragonStatus').style.display=lvl==4?'block':'none';$('dragonStatus').innerHTML=lvl==4?`🐉 <b>FLAME LANE ${dragonLane+1}</b> · breath in ${3-dragonTurn}<br>🛡️ guard ${dragonGuard}/3 · breaths survived ${dragonBreaths}`:'';~;
rep($a,$b,'draw dragon ui');
$a=q~<div><b>⚠ Board</b><br>${l[8]} every 4 moves; ${SH[lvl%SH.length].length} gaps.</div>`}~;
$b=q~<div><b>⚠ Board</b><br>${lvl==4?`Dragon targets row ${dragonLane+1}; collect 3 🛡️ to block the breath.`:`${l[8]} every 4 moves; ${SH[lvl%SH.length].length} gaps.`}</div>`}~;
rep($a,$b,'briefing');
$a=q~function board(){$('board').innerHTML=B.map((t,i)=>`<div class='tile ${t.hole?'hole ':''}${sel==i?'sel ':''}${t.block?'block ':''}${!t.hole&&!t.block&&(goals.some(g=>g[0]==t.type&&g[1]>0)||t.type==L[lvl][6])?'need ':''}' style='--bg:${C[t.type]}' onclick='tap(${i})'>${t.hole?'×':t.block?'📦':E[t.type]}</div>`).join('')}~;
$b=q~function board(){$('board').className='board'+(lvl==4?' dragon':'');$('board').innerHTML=B.map((t,i)=>`<div class='tile ${t.hole?'hole ':''}${sel==i?'sel ':''}${t.block?'block ':''}${lvl==4&&Math.floor(i/7)==dragonLane?'flameLane ':''}${!t.hole&&!t.block&&(goals.some(g=>g[0]==t.type&&g[1]>0)||t.type==L[lvl][6])?'need ':''}' style='--bg:${C[t.type]}' onclick='tap(${i})'>${t.hole?'×':t.block?'📦':E[t.type]}</div>`).join('')}~;
rep($a,$b,'board lane');
$a='let hit=c[L[lvl][6]];if(hit&&locks){locks=Math.max(0,locks-hit);score+=hit*180;crown=Math.min(100,crown+hit*10)}}';
$b='let hit=c[L[lvl][6]];if(hit&&locks){locks=Math.max(0,locks-hit);score+=hit*180;crown=Math.min(100,crown+hit*10)}if(lvl==4&&c[5])dragonGuard=Math.min(6,dragonGuard+c[5])}';
rep($a,$b,'shield guard');
$a=q~function after(){if(done())win();else{if(surge<=0)hazard();if(moves<=0)lose()}draw()}~;
$b=q~function after(){if(done())win();else{if(lvl==4)dragonStep();if(done())win();else{if(surge<=0)hazard();if(moves<=0)lose()}}draw()}function dragonStep(){dragonTurn++;if(dragonTurn<3){say(`🐉 Dragon aims at flame lane ${dragonLane+1} — build 3 🛡️ guard.`);return}dragonTurn=0;dragonBreaths++;if(dragonGuard>=3){dragonGuard-=3;score+=250;crown=Math.min(100,crown+15);toast('SHIELD BLOCK!');say('🛡️ The king blocks the dragon breath!')}else{let row=B.filter((t,i)=>Math.floor(i/7)==dragonLane&&!t.hole);row.slice(0,3).forEach(t=>t.block=true);if(locks<startLocks)locks++;toast('DRAGON BREATH!');say(`🔥 Row ${dragonLane+1} scorched — a bridge plank burned!`)}dragonLane=R(7)}~;
rep($a,$b,'dragon step');
$a='forceSurge:()=>{hazard();draw()},getState:()=>({';
$b='forceSurge:()=>{hazard();draw()},triggerDragonBreath:()=>{dragonTurn=2;dragonStep();draw()},getState:()=>({';
rep($a,$b,'test trigger');
$a='hasDistinctBoardLayouts:true,holes:';
$b='hasDistinctBoardLayouts:true,hasDragonBreathMechanic:true,dragonTurn,dragonLane,dragonBreaths,dragonGuard,holes:';
rep($a,$b,'test state');
open my $out,'>',$f or die $!; print $out $s; close $out;
