# Codex変更メモ

## 2026-08-20 — 職業ステータスとスキル数値を仕様資料に合わせて修正

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: ガーディアン、羊飼い、マッドケミスト、ポセイドン、エルフ、アシスター、トラッパー、Wizard系共通魔法、Assist系共通スキル
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- ガーディアン
  - 基礎体力: 40 → 38
- 羊飼い
  - 基礎サイズ: 0.9 → 1
- マッドケミスト、ポセイドン、エルフ、アシスター、羊飼い、トラッパー
  - 基礎攻撃速度: 明示設定なし → 1
- 火の魔法Ⅱ
  - MP: 100（変更なし）
  - CT: 50 → 200
  - CD: 100 → 300
  - 暗黒騎士、ポセイドン、魔女、魔王の職業選択時に渡される本の表記も修正
- 幻覚の杖
  - MP: 200（変更なし）
  - CT: 300 → 30
  - CD: 100（変更なし）
- パルプンテ
  - MP: 100（変更なし）
  - CT: 100（変更なし）
  - CD: 200 → 300

### 理由・背景

- 根拠区分: ユーザー確認済み
- Googleスプレッドシートからエクスポートされた仕様資料と実装の差異について、ユーザーから資料側の値が正しいと確認されたため、コードを資料に合わせた。
- 各数値のゲームバランス上の詳しい意図は未確認。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/guardian.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/shepherd.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/singed.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/wizardpirate.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/elf.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/assist.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/trapper.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/wizardsword.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/wich.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/wizard.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_fire2.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_fire2_sub.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_pulpunte.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_pulpunte_sub.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/assist/assist_jum/assist_hallucinations.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/assist/assist_jum/assist_hallucinations_sub.mcfunction`
- 関連要素:
  - attribute: `minecraft:max_health`、`minecraft:scale`、`minecraft:attack_speed`
  - scoreboard: `WizardMP`、`WizardCooldown`、`AssistMP`、`AssistCooldown`、`sneak`、`SelectJum`、`Kirikae`
  - tag: `Wizard`、`WizardFire2`、`WizardPulpunte`、`Assist`、`AssistHallucinations`
  - item: `アシストの杖`（`minecraft:blaze_rod`）および職業選択時に渡される魔法の本
  - 火の魔法ⅡとパルプンテはWizard系共通処理、幻覚の杖はAssist系共通処理を変更しているため、同じ共通処理を使う職業へ影響する。
- データパック外の変更: なし
- ワールド側のコマンドブロック、NBT、entity、座標は変更しておらず、今回の修正にあたって再調査もしていない。

### 検証

- 静的確認: 対象16ファイルを検索し、変更後のattribute、MP、CT、CD、発動条件、クールダウン設定、本の表示値が仕様値になっていることを確認。対象値に対する21件の静的検査はすべて成功。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際のゲーム内で、職業選択後のattribute、詠唱時間、クールダウン、表示が意図どおり反映されるかは未確認。
  - Wizard系・Assist系の共通処理を利用する全職業への実際の影響範囲は、実機では未確認。
  - データパック外の入口やscoreboard objectiveの手動設定は変更していない。

### パッチノート下書き素材

ジョブ

- ガーディアン
  - 基礎体力を40から38へ変更。
- 羊飼い
  - 基礎サイズを0.9から1へ変更。
- マッドケミスト、ポセイドン、エルフ、アシスター、羊飼い、トラッパー
  - 基礎攻撃速度を1に設定。
- 火の魔法Ⅱ
  - CT: 50 → 200
  - CD: 100 → 300
- 幻覚の杖
  - CT: 300 → 30
- パルプンテ
  - CD: 200 → 300

## 2026-08-20 — 全体リセット時のattributeリセット対象を修正

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: 職業選択の全体リセット、試合終了時の全体リセット
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: 全体リセット時、呼び出し元に最も近いプレイヤー以外のサイズが元に戻らない問題を修正。
- 同じリセットfunctionが扱う防具値、最大体力、攻撃速度、エンティティ操作距離、移動速度、攻撃力、落下ダメージ倍率についても、全プレイヤーが正しいリセット対象になるよう修正。
- 個人で職業を選択・リセットしたときの処理は変更していない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 全体リセットで、ボタンを押したプレイヤー以外のサイズが戻らない問題が報告されたため。
- 実装を確認した結果、`execute as @a`で実行者だけを切り替え、実行位置を各プレイヤーへ移していなかったことが原因と確認できた。呼び出された`state_reset`は`@p`を対象にするため、各実行で同じ最寄りプレイヤーが選ばれていた。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/job_select_reset.mcfunction`
  - `datapacks/pvp/data/main/function/finish/finish.mcfunction`
- 関連要素:
  - function: `main:job_selection/set/state_reset`
  - selector・実行コンテキスト: `execute as @a run` → `execute as @a at @s run`
  - attribute: `minecraft:armor`、`minecraft:max_health`、`minecraft:attack_speed`、`minecraft:entity_interaction_range`、`minecraft:scale`、`minecraft:movement_speed`、`minecraft:attack_damage`、`minecraft:fall_damage_multiplier`
  - コマンドブロック等の外部入口から呼ばれても、function内で各プレイヤーの位置へ実行位置を移してからリセットする。
- データパック外の変更: なし
- 全体リセットを起動するコマンドブロックのNBT、座標、チェーン設定は今回再調査していない。

### 検証

- 静的確認: 全体リセットの2つの入口が、どちらも`execute as @a at @s run function main:job_selection/set/state_reset`を使用することを確認。`state_reset`がリセットする8種類のattributeも確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 複数プレイヤーが参加した実機環境で、全員のサイズとその他attributeが初期値へ戻ることは未確認。
  - コマンドブロックからの実際の呼び出し順序は今回再確認していない。

### パッチノート下書き素材

不具合修正

- 全体リセット時、ボタンを押したプレイヤー以外のサイズが元に戻らないバグを修正。
- 全体リセットで、各プレイヤーの職業由来attributeが正しく初期化されるよう修正。

## 2026-08-20 — 試合終了時にジョブ召喚entityを一括削除

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: ジョブ能力による召喚entity、画家の設置ブロック、試合終了処理
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: 試合終了直前に召喚されたジョブ能力のentityが、職業tag削除後に寿命処理を停止してステージへ残る問題を対策。
- (新) ジョブ能力から召喚されるentityへ共通tag`MTentity`を付与し、試合終了時に一括削除する処理を追加。
- 画家はentity削除より先に、屯兵堡、長城壁、石柱の設置ブロックを撤去する専用resetを追加。
- ビーストテイマーと羊飼い向けに行っていた狼、馬、ラヴェジャー、羊の種類単位削除を廃止。ステージ等に配置された同種entityは、`MTentity`がなければ試合終了時のジョブ召喚物削除に巻き込まれない。
- ビーストテイマーの召喚数判定とグライアスのテレポート対象も`MTentity`付きに限定し、ステージ配置の狼、馬、ラヴェジャーと共存できるようにした。

### 理由・背景

- 根拠区分: ユーザー確認済み
- PvP処理はワールド内のリピートコマンドブロックから呼ばれており、試合終了で職業tagが削除されると職業別の継続処理が呼ばれなくなる。
- 特に画家では、召喚entityの寿命加算と自然削除が`Dusk`職業tagを入口とする処理内にあり、終了直前に召喚するとentityや設置ブロックが残ることが確認された。
- 将来、ステージギミックとして馬などを配置してもジョブ終了処理で削除しない構造にするため、ユーザー指定の共通tag`MTentity`を採用した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/finish/finish.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/reset.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp`配下の能力召喚処理85ファイル
    - 対象職業・共通処理: Ashe、Assist、Assist2、Beasttamer、Bomber、Bow、Dusk、Elf、Escaper、Guardian、Herobrine、Killer、Prototype、Shepherd、Singed、Sword、Thor、Trapper、Wizard、Wraith
  - ビーストテイマーのselector変更:
    - `datapacks/pvp/data/main/function/pvp/beasttamer/beasttamer_summon_wolf.mcfunction`
    - `datapacks/pvp/data/main/function/pvp/beasttamer/beasttamer_summon_ryu.mcfunction`
    - `datapacks/pvp/data/main/function/pvp/beasttamer/beasttamer_summon_gra.mcfunction`
- 関連要素:
  - 共通entity tag: `MTentity`
  - 画家entity tag: `DuskArmorStand1`、`DuskArmorStand2`、`DuskArmorStand3`、`gatyuzin`、`rabbit`、`kozizai`、`migawari`
  - 画家一時player tag: `DuskFortress`、`DuskRabbit`、`DuskSoldiers`、`DuskPiller`、`DuskWall`、`DuskAtelier`
  - 画家の既存撤去function: `duskfortressbuild_sub`、`duskwallbuild`、`duskpillerbuild`
  - `MTentity`導入前から残っている召喚物にも対応するため、`Wolf`、`Ryu`、`shepherd_sheep`、`trap`、`PoisonSinged`と画家固有tagによる互換削除を残した。
  - 未参照の表示用functionとワールド設置用の可能性がある`WizardPulpunteA`生成functionは、外部依存を考慮して`MTentity`付与対象から除外した。
- データパック外の変更: なし
- `main:pvp/pvp_control`を呼ぶリピートコマンドブロックはユーザー確認済みだが、今回コマンドブロックのNBT、座標、チェーン順は再調査・変更していない。

### 検証

- 静的確認:
  - `pvp`配下のsummon 194件を再走査し、除外した21件を除く対象173件すべてのentity NBTに`MTentity`があることを確認。
  - 終了処理が「画家のブロック撤去 → `MTentity`一括削除 → 職業tag削除」の順であることを確認。
  - 狼、馬、ラヴェジャー、羊の種類単位killが終了処理に残っていないことを確認。
  - 画家の3種類の建築物がmarker削除前に撤去functionを通ることを確認。
  - ビーストテイマーに`MTentity`未限定の狼、馬、ラヴェジャーselectorが残っていないことを確認。
  - 合計12項目の静的検査はすべて成功。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 複数職業の召喚物を残した状態で試合終了し、すべて削除されることは実機未確認。
  - 画家の建築物が各ステージで既存の自然消滅処理と同じ範囲だけ撤去されることは実機未確認。
  - プレイヤーが通常操作で発射した矢など、summonコマンド以外から生成されるentityには`MTentity`を付与していない。

### パッチノート下書き素材

不具合修正

- 試合終了直前に召喚されたジョブ能力のentityがステージへ残るバグを修正。
- ジョブ能力による召喚entityへ`MTentity`tagを追加し、試合終了時に一括削除するよう変更。
- 画家の屯兵堡、長城壁、石柱は、召喚entityを削除する前に設置ブロックを撤去するよう変更。
- 狼、馬、ラヴェジャー、羊の種類単位削除を廃止し、ステージ配置entityを削除対象から分離。

## 2026-08-20 — タイマー付きピックフェーズをシステム化

- 状態: 実装済み
- パッチ区分: システム
- 対象: 2vs2・3vs3のステージ選択、BAN、ジョブピック
- 公開時の重要度: 大規模

### プレイヤー向け変更内容

- (新) 2vs2／3vs3とBANあり／なしを組み合わせた4種類のピック順を自動進行するシステムを追加。
- (新) ファーストピックを参加者からランダム選出し、その所属チームをチームA、相手をチームBとして各フェーズの操作権を管理。
- (新) 制限時間と現在行う操作を`main:pick` bossbarへ表示。
  - ステージ選択・作戦会議: 2分
  - BAN: 1分
  - 1人ピック: 1分
  - 2人ピック: 90秒
  - フェーズ間表示: 1.5秒
- (新) ステージをtellrawの一覧から仮選択し、別の「このステージに決定」ボタンで確定する操作を追加。確定までは何度でも変更でき、仮選択中も既存の物理看板とステージ用レッドストーン表示を同期。
- ステージ選択が時間切れになった場合は、その時点の仮選択を確定。
- BANが時間切れになった場合は、ジョブをBANせずに次のフェーズへ進行。
- ジョブピックが時間切れになった場合は、未選択・未BANの実装済みジョブからランダムに付与。
- チームBANは、操作権を持つチーム内で最初に押された有効なジョブを採用。
- 同時に2人が選択するフェーズでは各プレイヤーが個別に選択でき、bossbarに選択したプレイヤー名とジョブ名を表示。
- 選択済みまたはBAN済みのジョブは、それ以降のピック・BAN・時間切れランダム付与に使用できない。
- 武闘家、魔法使い、音楽家、魔王は未実装職としてピック候補から除外。現在の物理一覧に表示される武闘家と魔王の看板も、ピック中は未実装表示へ変更。
- 魔女選択時に既存タイトルが「魔王」と表示されていた箇所を「魔女」へ修正。
- 参加者数が赤青同数の2人または3人でない場合は開始せず、進行中に参加人数が不足した場合はピックを中止。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 手動進行だったピックフェーズをタイマー付きでシステム化し、試合開始までのテンポを改善するため。
- 各ルールのピック順、制限時間、BAN時間切れ時のBANなし、ピック時間切れ時のランダム付与、チーム内の最初のBAN入力採用、bossbar表示、tellrawによるステージ選択はユーザー確認済み。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/minecraft/tags/function/tick.json`（新規）
  - `datapacks/pvp/data/main/function/job_selection/pick`配下
    - 既存入口: `pick_start.mcfunction`、`banpick_start.mcfunction`
    - 状態機械: `start`、`tick`、`next`、`timeout`、`reset`、`finish`
    - ルール定義: `rule/20`、`rule/21`、`rule/30`、`rule/31`
    - ステージ、BAN、ピック、bossbar表示、ジョブ利用状態、時間切れ処理の各function
  - `datapacks/pvp/data/main/function/mode/ez_stage_setting.mcfunction`
  - `datapacks/pvp/data/main/function/mode/stage_setting_sync.mcfunction`（新規）
  - 現行32職の`datapacks/pvp/data/main/function/job_selection/<job>.mcfunction`
    - ピック中のみ共通のBAN・重複禁止・選択完了処理へ分岐し、通常時と実際の装備・attribute付与時は既存本体を利用。
  - 未実装職の選択拒否: `fighter.mcfunction`、`test.mcfunction`、`musician.mcfunction`、`wizard.mcfunction`
  - 表示修正: `wich.mcfunction`
- 関連要素:
  - scoreboard objective: `PickCtrl`、`PickPool`、`PickJob`、`PickAction`
  - 既存scoreboard: `StageSetting`のfake player`ステージ決め`
  - storage: `main:pick`
  - bossbar: `main:pick`
  - player tag: `PickParticipant`、`PickFirst`、`PickTeamA`、`PickTeamB`、`PickAllowed`、`PickStageAllowed`、`PickSelected`、`PickSlot1`、`PickSlot2`、`PickBanActor`、`PickBypass`
  - world entity tag: `jobsentakuKun`、`KariokiStageSentaku`、`CentralControlSystem`
  - 既存座標: ジョブ選択位置`9 1 10010`
  - 初回に`pick_start`または`banpick_start`を呼んだ際、専用objectiveとbossbarを`setup`で一度だけ作成する。ワールドの`scoreboard.dat`は直接編集していない。
  - 既存の物理ステージボタンは従来の切替・帰還・人数リセットを維持し、看板とレッドストーン同期部分だけを共通functionへ移した。
- データパック外の変更: なし
- ワールド側のコマンドブロック、region/NBT、既存entity、建築物は変更していない。

### 検証

- 静的確認:
  - 32の実装済み職すべてにピック入力分岐が1つずつあり、`PickPool`初期化と時間切れランダム候補にも同じ32職が存在することを確認。
  - 武闘家、魔法使い、音楽家、魔王が`PickPool = 3`で使用不可になることを確認。
  - 4ルールの遷移がそれぞれ5、7、6、11段階で定義され、ユーザー指定の順番になっていることを確認。
  - tick tag、各タイマー、ステージ確定入力、静的function参照を検査し、欠落参照がないことを確認。
  - 別の一時ワールドへデータパックをコピーし、Minecraft Java Edition 1.21.5サーバーで読込。今回追加したピック関連functionと`stage_setting_sync`の読込失敗は0件で、phase・stage・職業入力のfunction macroも直接展開できた。
- Minecraft実機確認: 一時サーバーで構文・macro展開を確認。実際のSJPワールドへ複数プレイヤーで参加して行う操作テストは未実施。
- 残る懸念・未確認事項:
  - 実ワールドの物理職業看板をクリックした際の全32職の選択、BAN、表示、フェーズ遷移は未確認。
  - 既存コマンドブロックから`pick_start`と`banpick_start`が実際に呼ばれる入口・チェーンは、今回変更も再調査もしていない。
  - ステージ3～7の試合開始処理は従来どおり未実装であり、今回のステージ選択機能は開始処理を補完しない。
  - データパック全体の一時サーバー読込では、今回の変更範囲外に既存の1.21.5構文エラーと無効なファイルパスが残っている。

### パッチノート下書き素材

システム

- 2vs2／3vs3、BANあり／なしの4ルールに対応したタイマー付きピックフェーズを追加。
- ステージ選択・作戦会議は2分、BANは1分、1人ピックは1分、2人ピックは90秒に設定。
- ステージをチャット一覧から仮選択し、「このステージに決定」で確定できるよう変更。物理看板にも選択を同期。
- BAN時間切れ時はBANなし、ピック時間切れ時は使用可能なジョブをランダム付与。
- bossbarに現在の操作、残り時間、選択済みプレイヤーとジョブを表示。
- 選択済み・BAN済みジョブの重複利用を防止し、未実装4職を候補から除外。

## 2026-08-20 — ピックフェーズをデバッグ用3vs3固定へ変更

- 状態: 実装済み
- パッチ区分: システム
- 対象: ピックフェーズの参加人数判定
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- デバッグ中のみ、赤青チーム人数による2vs2／3vs3自動判定を一時停止し、ルールを3vs3へ固定。
- デバッグ中のみ、進行中の参加人数不足を検出してピック全体を中止する処理を一時停止。
- 必要人数より実際の選択可能プレイヤーが少ないピックフェーズは、時間切れ時に不足分を完了扱いとして次へ進める。
- BANあり／なしの選択は従来どおり`banpick_start`／`pick_start`の入口で切り替える。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 実装したピックフェーズを少人数でデバッグできるようにするため、ユーザー指定で3vs3固定にした一時変更。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/pick/start.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/tick.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/timeout/pick.mcfunction`
- 関連要素:
  - scoreboard: `PickCtrl`の`#teamSize`、`#done`、`#need`
  - tag: `PickParticipant`、`PickAllowed`
  - 固定値: `#teamSize PickCtrl = 3`
  - 本番復帰時は、開始時の赤青チーム人数集計・検証、tick中の`#online`と`#expected`比較、時間切れ時の人数不足中止を復元する必要がある。
- データパック外の変更: なし
- コマンドブロック、world NBT、scoreboard.datは変更していない。

### 検証

- 静的確認: `#teamSize`が3へ固定され、開始時の自動判定、tick中の人数不足中止、時間切れ時の人数不足中止が実行されないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 少人数で3vs3各フェーズを最後まで通せることは実機未確認。
  - デバッグ終了後に必ず本番用の人数判定へ戻す必要がある。

### パッチノート下書き素材

開発用の一時変更のため、公開パッチノートへの掲載対象外。
## 2026-08-20 — ピック完了後に試合を自動開始

- 状態: 実装済み
- パッチ区分: システム
- 対象: ピックフェーズ終了、試合開始
- 重要度: 通常

### プレイヤー向け変更内容

- 全プレイヤーのジョブ選択が完了すると、自動的に試合開始処理へ進むように変更。
- ピック用のbossbarや一時状態をリセットしてから試合を開始するため、手動の開始操作が不要になった。

### 変更理由

- ピックフェーズのシステム化に合わせて、ピック完了から試合開始までを途切れず進行させるため。
- 既存の`main:job_selection/senzyouhe`が正式な試合開始処理であることをユーザーが確認したため。

### 主な変更ファイル

- `datapacks/pvp/data/main/function/job_selection/pick/finish.mcfunction`

### 関連する実装

- function: `main:job_selection/pick/reset`
- function: `main:job_selection/senzyouhe`
- tag: `PickParticipant`、`Standbypick`
- bossbar: `main:pick`
- `senzyouhe`は`StageSetting`、Red/Blueチーム、ステージ別座標および既存のステージ開始処理に依存する。

### 検証状況

- ピック完了処理内で、表示・効果音の後に`pick/reset`、続いて`senzyouhe`が呼ばれる順序を静的確認。
- 両functionのファイルが存在することを確認。
- Minecraft上での実機動作確認は未実施。
- ステージ3～7の固有開始処理は従来どおり未実装であり、今回の変更対象外。

### パッチノート候補文

- ピック完了後、自動的に試合開始処理へ移るよう変更しました。

## 2026-08-20 — 爆発の呪いの対象不在時テキストを抑制

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: Wizard系共通魔法「爆発の魔法Ⅰ」「爆発の魔法Ⅱ」の「爆発の呪い」
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: 「爆発の魔法」の効果範囲内に「爆発の呪い」の付与対象がいない場合でも、対象名とスタック数のテキストが術者へ表示される問題を修正。
- 爆発の魔法Ⅰは術者から半径3ブロック以内、爆発の魔法Ⅱは半径7ブロック以内に敵チームの付与対象がいるときだけテキストを表示。
- 表示する対象名とスタック数も、距離無制限の最寄りの敵プレイヤーではなく、呪いの付与に使われる範囲内の対象selectorから取得するよう変更。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 効果範囲内に敵がいないときは「爆発の呪い」が付与されないため、付与結果のテキストも表示しないようにするため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_explosion1_sub.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_explosion2_sub.mcfunction`
- 関連要素:
  - scoreboard: `explosion_curse`
  - tag: `Wizard`、`WizardExplosion1`、`WizardExplosion2`
  - team: `Red`、`Blue`
  - selector: 魔法Ⅰは`distance=..3`、魔法Ⅱは`distance=..7`、ともに`limit=1`
  - 実行コンテキスト: `execute as <術者> at @s if entity <付与対象> run tellraw @s ...`
- データパック外の変更: なし
- ワールド側のコマンドブロック、scoreboard objective定義、entity、NBTは今回調査・変更していない。

### 検証

- 静的確認: 魔法Ⅰ・Ⅱの赤青両チーム用tellraw合4系統に、術者位置で付与範囲内の敵対象を確認する`if entity`があることを確認。表示名とscore参照も付与処理と同じチーム・距離・件数のselectorを使うことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `wizard_explosion2_sub.mcfunction`の呪い加算処理は、術者の発動tagが`WizardExplosion2`であるのに`tag=WizardExplosion1`を検索している。魔法Ⅱで呪いが実際に加算されない可能性があるが、今回の表示条件修正では変更していない。
  - 対象がいる場合といない場合の実際のチャット表示は実機未確認。

### パッチノート下書き素材

不具合修正

- 「爆発の魔法」の効果範囲内に敵がいない場合でも、「爆発の呪い」のスタック表示が出るバグを修正。

## 2026-08-20 — 爆発の魔法Ⅱの呪い加算tagを修正

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: Wizard系共通魔法「爆発の魔法Ⅱ」の「爆発の呪い」
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: 爆発の魔法Ⅱの発動時、術者の発動tagと呪い加算処理の参照tagが一致していなかった問題を修正。
- 爆発の魔法Ⅱの術者から半径7ブロック以内の敵チームの対象1体に、「爆発の呪い」を3スタック加算する処理が正しい術者位置から実行されるよう修正。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 魔法Ⅱの呪いが加算されない可能性を排除し、発動した魔法Ⅱの術者を基準に付与処理を実行するため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_explosion2_sub.mcfunction`
- 関連要素:
  - tag: 呪い加算時の術者selectorを`WizardExplosion1` → `WizardExplosion2`に修正
  - scoreboard: `explosion_curse`
  - team: `Red`、`Blue`
  - selector: `distance=..7`、`limit=1`
  - 加算値: 3スタック
  - 発動時に`WizardExplosion2`を付与し、加算・表示・`wizard_explosion_curse`の処理後に同tagを削除する既存の実行順序は維持。
- データパック外の変更: なし
- ワールド側のコマンドブロック、scoreboard objective定義、entity、NBTは今回調査・変更していない。

### 検証

- 静的確認:
  - 赤チーム術者は青チーム、青チーム術者は赤チームの範囲内対象へ`explosion_curse` 3を加算することを確認。
  - 魔法Ⅱの呪い加算処理に`tag=WizardExplosion1`が残っていないことを確認。
  - `main:pvp/wizard/wizard_jum/wizard_explosion_curse`が`WizardExplosion2`削除より先に実行されることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際に魔法Ⅱを発動したとき、範囲内の敵のスタックが3増加することは実機未確認。

### パッチノート下書き素材

不具合修正

- 爆発の魔法Ⅱで「爆発の呪い」が正しく加算されない場合があるバグを修正。

## 2026-08-20 — パルプンテ抽選をデータパック内へ移行

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: Wizard系共通魔法「パルプンテ」（魔女を含む）
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: 魔女でパルプンテの`MP 100 / CT 100`を満たしても、抽選用entityとコマンドブロックが存在せず効果が実行されない問題を修正。
- パルプンテの抽選をデータパック内で完結させ、次の6種類を各`1/6`の均等確率で発動するよう変更。
  1. 敵チーム全員へエヴォーカーの牙
  2. 敵味方プレイヤー全員へ盲目3秒と弱体化Ⅱ3秒
  3. 敵味方へ透明化10秒と発光10秒
  4. 敵の上空80ブロックから「天からのプレゼント」を落下
  5. プレイヤー全員をkill
  6. 術者のチームに護衛スケルトンを召喚
- 護衛スケルトンの弓、防具、エンチャント、防具色をMinecraft 1.21.5のitem components構文で付与するよう修正。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 「全員kill」と「護衛スケルトン」を含む6効果を抽選対象にした上で、コマンドブロックに依存しない形で実装することがユーザ指定。
- 根拠区分: 資料に記載
- `Sjpジョブ情報.xlsx`には、牙、盲目＋弱体化、透明＋発光、上空からの爆弾、修正必要の`kill @a`がパルプンテ効果として記載されている。護衛スケルトンは既存コードから確認。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_pulpunte_sub.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/pulpunte/pulpunte0.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/pulpunte/pulpunte1.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/pulpunte/pulpunte2.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/pulpunte/pulpunte3.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/pulpunte/pulpunte4.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/pulpunte/pulpunte5.mcfunction`
- 関連要素:
  - storage: `main:pulpunte` / `outcome`に`random value 0..5`の結果を保存
  - scoreboard: `WizardMP`を100消費、`sneak`（CT）を0へリセット、`WizardCooldown`を300へ設定
  - tag: `WizardPulpunte`、`WizardPulpunte0`～`WizardPulpunte5`、`bombing`、`MTentity`
  - team: `Red`、`Blue`
  - 旧依存: `WizardPulpunteA`付きarmor standのランダム選択とredstone block設置を現行発動経路から削除
  - 各効果function内の`setblock ~ ~1 ~ air`を削除
  - 同時発動時の巻き込みを防ぐため、一時tagとMP・CT・CDの後処理を現在の術者`@s`に限定
  - 護衛スケルトンは`equipment`と`count`、`minecraft:enchantments`、`minecraft:unbreakable`、`minecraft:dyed_color`を使う1.21.5形式へ変更
- データパック外の変更: なし
- 保存済みワールドNBTの読み取り調査:
  - `entities/*.mca`に`WizardPulpunteA`を含む保存済みchunkは0件。
  - `region/*.mca`に`pulpunte0`～`pulpunte3`または`set_armor_stand`を呼ぶ保存済みコマンドブロックchunkは0件。
  - 調査時はワールドが稼働中だったため、メモリ上の未保存状態までは確認していない。

### 検証

- 静的確認:
  - `random value 0..5`の6値それぞれが`pulpunte0`～`pulpunte5`へ1対1で分岐することを確認。
  - 現行発動経路に`WizardPulpunteA`参照やredstone block操作が残っていないことを確認。
  - 術者`@s`に対するMP100消費、CTリセット、CD300設定が抽選前に実行されることを確認。
  - 全員killは術者の一時tagを削除してから`kill @a`を実行することを確認。
  - 護衛スケルトンの赤青両コマンドが1.21.5用equipment/components構文で、旧`Count`、`HandItems`、`ArmorItems`を使っていないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 魔女で実際に6効果それぞれを発動できることは実機未確認。
  - 均等抽選の長期的な出現比率は実機未確認。
  - `set_armor_stand.mcfunction`と`set_armor_stand_debug.mcfunction`は旧実装としてファイルに残しているが、現行発動経路からは参照されない。

### パッチノート下書き素材

不具合修正

- 魔女でパルプンテの発動条件を満たしても効果が実行されないバグを修正。
- パルプンテの6効果を各`1/6`でデータパック内抽選し、コマンドブロックに依存しないよう変更。

## 2026-08-20 — パルプンテのparticle読込エラーを修正

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: Wizard系共通魔法「パルプンテ」（魔女を含む）
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: パルプンテの発動functionがparticle構文エラーで読み込まれず、発動できない問題を修正。
- `minecraft:entity_effect`のparticleに白色のRGBA色指定`color:[1.0f,1.0f,1.0f,1.0f]`を追加。

### 理由・背景

- 根拠区分: ユーザー確認済み
- パルプンテのparticle読込エラーを修正し、稼働中サーバーでreload確認することがユーザ指定。
- 根拠区分: 実装から確認
- Minecraft 1.21.5のサーバーログでは、色オプションのない`minecraft:entity_effect`に対して`No key color in MapLike[{}]`が報告されていた。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_pulpunte_sub.mcfunction`
- 関連要素:
  - particle: `minecraft:entity_effect` → `minecraft:entity_effect{color:[1.0f,1.0f,1.0f,1.0f]}`
  - サーバーコマンド: `reload`
- データパック外の変更: なし
- 稼働中のMinecraft 1.21.5サーバーコンソールで`reload`を実行。ワールドNBT、コマンドブロック、entityは直接変更していない。

### 検証

- 静的確認: `minecraft:entity_effect`にRGBA色指定があることを確認。
- Minecraft実機確認:
  - 2026-08-20 17:33:06に稼働中サーバーで`reload`実施済み。
  - `Reloading!`から`Loaded 1484 advancements`まで完了したことを確認。
  - `main:pvp/wizard/wizard_jum/wizard_pulpunte_sub`の読込失敗は修正前1件 → 修正後0件。
  - データパック全体の読込失敗function数は55件 → 54件。残る54件は今回のパルプンテ修正とは別の既存エラー。
- 残る懸念・未確認事項:
  - 魔女が実際にパルプンテを発動し、particle表示と6種類の抽選効果を得られることはプレイテスト未実施。

### パッチノート下書き素材

不具合修正

- パルプンテのparticle構文エラーにより発動functionが読み込まれないバグを修正。

## 2026-08-20 — パルプンテの護衛名を1.21.5形式へ更新

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: Wizard系共通魔法「パルプンテ」の護衛スケルトン
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- バグの修正: 護衛スケルトンの名前が旧JSON文字列形式で指定されていた問題を修正。
- 青チームの護衛は青色で「青チームの護衛」、赤チームの護衛は赤色で「赤チームの護衛」と表示する仕様を維持。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 護衛の名前が旧仕様になっているため、Minecraft 1.21.5で正しく表示できる形式へ改善することがユーザ指定。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/pulpunte/pulpunte5.mcfunction`
- 関連要素:
  - 青護衛の`CustomName`: `'\{"text":"青チームの護衛","color":"blue"\}'` → `{text:"青チームの護衛",color:"blue"}`
  - 赤護衛の`CustomName`: `'\{"text":"赤チームの護衛","color":"red"\}'` → `{text:"赤チームの護衛",color:"red"}`
  - `CustomNameVisible:1b`は維持
  - サーバーコマンド: `reload`
- データパック外の変更: なし
- 稼働中のMinecraft 1.21.5サーバーコンソールで`reload`を実行。ワールドNBT、コマンドブロック、entityは直接変更していない。

### 検証

- 静的確認:
  - 赤青両コマンドの`CustomName`がSNBTテキストコンポーネント形式であることを確認。
  - `CustomName:'{"text":...}'`形式が`pulpunte5.mcfunction`に残っていないことを確認。
- Minecraft実機確認:
  - 2026-08-20 17:37:35に稼働中サーバーで`reload`実施済み。
  - `Reloading!`から`Loaded 1484 advancements`まで完了したことを確認。
  - `pulpunte5`およびその他パルプンテ関連functionの読込失敗は0件。
- 残る懸念・未確認事項:
  - 実際に赤青の護衛を召喚し、頭上の名前と色が意図どおり表示されることはプレイテスト未実施。
  - データパック全体には今回と無関係の既存読込エラー54件が残っている。

### パッチノート下書き素材

不具合修正

- パルプンテで召喚される護衛スケルトンの名前が正しく表示されないバグを修正。

## 2026-08-20 — ステージ1・2の開始案内テキストを1.21.5形式へ更新

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: ステージ1「バインド」、ステージ2「闘技場」の試合開始地点案内
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: ステージ1・2の開始地点に表示される「ボタンを押してReady」「両チームとも準備OKに」「なったらスタート！」「準備中...」「準備OK！」のテキストが、Minecraft Java Edition 1.21.5で読み込める形式になるよう修正。
- 表示文言、文字色、表示位置、準備ボタンおよび開始カウントダウンの挙動は変更していない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- ステージ1・2の開始処理に、旧バージョン形式のテキストコンポーネントが残っているとユーザーから確認されたため。
- Minecraft Java Edition 1.21.5では、NBT内のテキストコンポーネントをJSONで包んだ文字列ではなく、外側の構造へ直接埋め込む形式で記述する必要がある。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/stage/stage_set.mcfunction`
  - `datapacks/pvp/data/main/function/stage/stage_set2.mcfunction`
  - `datapacks/pvp/data/main/function/stage/ready_red.mcfunction`
  - `datapacks/pvp/data/main/function/stage/ready_blue.mcfunction`
  - `datapacks/pvp/data/main/function/stage/ready_red2.mcfunction`
  - `datapacks/pvp/data/main/function/stage/ready_blue2.mcfunction`
- 関連要素:
  - entity: 表示用`minecraft:armor_stand`
  - NBT: `CustomName`、`CustomNameVisible`
  - 形式変更: `CustomName:'{"text":"...","color":"..."}'` → `CustomName:{text:'...',color:'...'}`
  - 変更件数: ステージ1・2の開始フロー内で合計36件
  - 呼び出し元: `main:job_selection/senzyouhe`、`main:stage/stage`、`main:stage/stage2`
- データパック外の変更: なし
- ワールド側の開始地点marker entity、ボタン、ガラス壁、コマンドブロック、region/NBTは変更していない。

### 検証

- 静的確認:
  - 対象6ファイルで旧文字列形式の`CustomName`が0件、新しいインラインSNBT形式が36件であることを確認。
  - 対象の名前付きarmor stand生成36件すべてが新形式になっていることを確認。
  - `senzyouhe`から`stage_set`／`stage_set2`、各ステージ継続処理から赤青の`ready`処理へ到達することを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実ワールドでステージ1・2を開始し、案内テキストが各準備状態で正しく表示・更新されることは未確認。

### パッチノート下書き素材

不具合修正

- ステージ1・2の試合開始地点にある準備案内テキストが表示されない問題を修正。

## 2026-08-20 — ステージ1の開始地点ガラス壁を試合中も維持

- 状態: 実装済み
- パッチ区分: ステージ
- 対象: ステージ1「バインド」の試合開始地点
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- ステージ1の開始カウントダウン終了時、数字を表現していたダイヤモンドブロックを各チーム色の板ガラスへ戻した後、そのガラス壁を破壊せず一面の壁として残すよう変更。
- 赤チーム側は赤色の板ガラス、青チーム側は青色の板ガラスが残る。
- ステージ2の開始地点ガラス壁には変更なし。

### 理由・背景

- 根拠区分: ユーザー確認済み
- ステージ1のガラス壁内側を試合中の安全地帯として残すため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/stage/schedule/0_seconds.mcfunction`
- 関連要素:
  - world entity tag: `AkaNoSuta-toTitenn`、`AoNoSuta-toTitenn`
  - block: `minecraft:red_stained_glass_pane`、`minecraft:blue_stained_glass_pane`、`minecraft:air`
  - 赤側相対範囲: `~-7 ~ ~` ～ `~6 ~6 ~`
  - 青側相対範囲: `~-5 ~ ~` ～ `~5 ~6 ~`
  - 0秒時の全面ガラス設置は維持し、その直後に同範囲を`minecraft:air destroy`へ置換していた赤青各1コマンドを削除。
  - 小マップモード設定と`main:start/start`の呼び出し順は変更していない。
- データパック外の変更: なし
- 開始地点marker entityの実座標、建築物、region/NBT、コマンドブロックは今回調査・変更していない。

### 検証

- 静的確認:
  - ステージ1の0秒処理に、赤・青の全面ガラス設置が各1件残っていることを確認。
  - 同処理内にガラス範囲を空気へ置換するコマンドが0件であることを確認。
  - ステージ2の0秒処理には従来の空気置換2件が残っており、変更対象外であることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実ワールドでカウントダウン後にダイヤモンドブロックが残らず全面ガラスになること、および意図した範囲が安全地帯として機能することは未確認。

### パッチノート下書き素材

ステージ

バインド

- 試合開始地点のカウントダウン用ガラス壁を、試合開始後も安全地帯の境界として残すよう変更。

## 2026-08-20 — ステージ3～7に両チーム確認式の共通開始処理を追加

- 状態: 実装済み
- パッチ区分: システム・ステージ
- 対象: ステージ3「ちゅらうみ」～ステージ7「SJP城」の試合開始
- 公開時の重要度: 重要

### プレイヤー向け変更内容

- ステージ3～7で、赤・青の各チームがチャットの`[準備OK]`を押した後に5秒の試合開始カウントダウンが始まるよう変更。
- 各チームの準備確認は、チーム内で最初に押したプレイヤーの入力を採用する。
- 片方のチームだけが確認済みの場合は、カウントダウン開始前に準備を取り消せる。
- 準備確認待ちからカウントダウン終了までは、参加プレイヤーを各ステージの開始地点へ毎tick固定する。
- カウントダウン終了後は既存の共通試合開始処理へ自動的に進む。

### 理由・背景

- 根拠区分: ユーザー確認済み
- ステージ3～7は開始地点が狭く、ステージ1・2のガラス内で待機する方式をそのまま利用できないため。
- 試合開始前に安全地帯の外へ出ることを、開始地点への毎tick固定で防止するため。

### 実装記録

- 追加function:
  - `datapacks/pvp/data/main/function/stage/common_start/`配下15ファイル
  - 初期化、開始待機、チーム別確認・取消、5秒カウントダウン、開始地点固定、停止・リセットを分割して実装。
- 変更ファイル・function:
  - `datapacks/pvp/data/minecraft/tags/function/tick.json`
  - `datapacks/pvp/data/main/function/job_selection/senzyouhe.mcfunction`
  - `datapacks/pvp/data/main/function/start/start.mcfunction`
  - `datapacks/pvp/data/main/function/finish/finish.mcfunction`
  - `datapacks/pvp/data/main/function/stage/stage_full.mcfunction`
- 関連要素:
  - scoreboard objective: `StageStartCtrl`、`StageReady`
  - player tag: `StageStartParticipant`
  - storage: `main:stage_start`
  - tick入口: `main:stage/common_start/tick`
  - 試合開始入口: `main:start/start`
  - ステージ3～7の固定座標は`main:job_selection/senzyouhe`のテレポート座標と一致させた。
  - 既存の物理開始ボタンが残っている間も、確認待ち・カウントダウンの省略と試合開始処理の二重実行を防止するガードを追加。
  - 旧ステージ3開始処理`main:stage/stage_full`は、新共通開始処理が有効な間だけ旧ボタン判定を停止する。
  - 旧ステージ3カウントダウンの予約が残っている場合は、新共通開始待機の開始時に解除する。
- データパック外の変更: なし
- 既存の物理ボタン、コマンドブロック、開始地点entity、region/NBT、圧力板は変更していない。

### 検証

- 静的確認:
  - 新規共通開始function 15個について、`main:` function参照に欠落がないことを確認。
  - tick tagのJSONが正常に読み取れることを確認。
  - ステージ3～7の赤・青各開始地点が`senzyouhe`のテレポート先と一致することを確認。
  - 両チーム確認後に100tickからカウントを開始し、80・60・40・20tickで4～1を表示して0tickで`main:start/start`を呼ぶ構成を確認。
  - 試合開始時とゲーム終了時の双方から、開始地点固定と一時tag・scoreboard状態を解除する経路を確認。
  - 旧ステージ3処理の停止ガードと、物理ボタンによる未確認開始・二重開始の防止経路を確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実ワールドで各チームのクリック入力、5秒間の表示と効果音、毎tick固定、カウント終了後の試合開始が意図どおり動作することは未確認。
  - ステージ3～7それぞれで、固定座標の足場・向き・周辺ブロックとの組み合わせが安全であることは実機確認が必要。

### パッチノート下書き素材

システム・ステージ

- ステージ3～7の試合開始を両チームの準備確認式に変更し、確認後に5秒カウントダウンを行うようにしました。
- 試合開始までは各チームを開始地点へ固定し、開始前にエリア外へ出られないようにしました。

## 2026-08-20 — ステージ3～7の開始前観戦と固定方向を修正

- 状態: 実装済み
- パッチ区分: システム・ステージ・不具合修正
- 対象: ステージ3「ちゅらうみ」～ステージ7「SJP城」の準備確認待ち・開始カウントダウン
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- (新) ステージ3～7の準備確認待ち中、参加プレイヤーをスペクテイターモードにしてステージ内を自由に確認できるよう変更。
- 両チームの準備確認が揃った時点で全参加者を各チームの開始地点へ戻し、その後の5秒カウントダウン中だけ毎tick固定するよう変更。
- バグの修正: ステージによって開始前の固定方向が横向きや相手と反対向きになる問題を修正し、赤・青チームが相手側の開始地点を向くよう統一。
- カウントダウン終了後は、既存の試合開始処理によって全プレイヤーをアドベンチャーモードへ戻す。

### 理由・背景

- 根拠区分: ユーザー確認済み
- ステージ開始前に固定される向きの誤りが報告されたため。
- 準備確認待ちの時間を使って、プレイヤーがスペクテイターモードでステージを確認できるようにするため。
- 毎tick固定が必要なのは5秒カウントダウン中であり、準備確認待ち中は自由に観戦できる構成へ修正した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/senzyouhe.mcfunction`
  - `datapacks/pvp/data/main/function/stage/common_start/begin.mcfunction`
  - `datapacks/pvp/data/main/function/stage/common_start/tick.mcfunction`
  - `datapacks/pvp/data/main/function/stage/common_start/lock.mcfunction`
  - `datapacks/pvp/data/main/function/stage/common_start/countdown/begin.mcfunction`
- 関連要素:
  - player tag: `StageStartParticipant`
  - scoreboard: `StageStartCtrl`の`#state`（確認待ち`1`、カウントダウン`2`）
  - game mode: 確認待ち開始時に`spectator`、既存の`main:start/start`で`adventure`
  - 固定処理は`#state StageStartCtrl matches 2`の間だけtick実行。
  - 両チーム確認が揃ったtickでは、カウントダウン開始functionから固定処理を直接呼び、観戦位置にかかわらず即座に開始地点へ戻す。
  - ステージ3～7の開始方向は、各開始地点から相手チーム開始地点へ向く水平角を整数へ丸めた値に統一。
    - ステージ3: 青`-90 → 108`、赤`-90 → -72`
    - ステージ4: 青`-90 → -166`、赤`-90 → 14`
    - ステージ5: 青`90`、赤`-90`（変更なし）
    - ステージ6: 青`180 → 162`、赤`180 → -18`
    - ステージ7: 青`180`、赤`0`（変更なし）
- データパック外の変更: なし
- 物理ボタン、コマンドブロック、開始地点entity、region/NBT、建築物は変更していない。

### 検証

- 静的確認:
  - ステージ3～7について、設定した赤青各方向と開始地点間の計算角度との差が最大0.5度以内であることを確認。
  - `senzyouhe`の開始時TPと`common_start/lock`の固定座標・方向が一致することを確認。
  - 準備確認待ち開始時に`StageStartParticipant`だけがスペクテイターモードになることを確認。
  - 確認待ち状態ではtick固定を行わず、両チーム確認直後とカウントダウン状態だけ固定functionへ到達することを確認。
  - 既存の`main:start/start`に全プレイヤーをアドベンチャーモードへ戻す処理があることを確認。
  - 変更範囲のfunction参照に欠落がなく、データパック内JSONがすべて正常に読み取れることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実ワールドでスペクテイター移動、準備確認直後の帰還、5秒固定、試合開始時のアドベンチャー復帰が連続して正しく動作することは未確認。
  - 各ステージで相手側開始地点を向く方向が、建築上の正面として意図した方向と一致することは実機未確認。

### パッチノート下書き素材

システム・ステージ

- ステージ3～7の準備確認待ち中、スペクテイターモードでステージを確認できるよう変更。
- 両チームの準備確認後は開始地点へ戻り、5秒カウントダウン中だけ固定されるよう変更。
- 一部ステージで試合開始前に横向きや反対向きへ固定される問題を修正。

## 2026-08-20 — 準備確認triggerの修正と一人用開始デバッグを追加

- 状態: 実装済み
- パッチ区分: 不具合修正・その他
- 対象: ステージ3～7のチーム準備確認、一人での開始デバッグ
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: チャットに表示された`[準備OK]`を最初に押しても、「まだオブジェクトをトリガーできません」と表示されて入力できない問題を修正。
- (新・デバッグ用) 開始参加者が一人だけの場合、そのプレイヤー自身の準備確認だけで相手チームの確認を省略し、5秒カウントダウンへ進める一人用開始デバッグを追加。
- 一人用開始デバッグは明示的に有効化した場合だけ動作し、無効時または参加者が二人以上の場合は従来どおり赤・青両チームの確認が必要。

### 理由・背景

- 根拠区分: ユーザー確認済み
- デバッグ用3vs3固定ピックを一人で進めた際、ステージ開始確認を操作できず試合開始まで到達できなかったため。
- 実装を確認した結果、`StageReady`を毎tick有効化した直後に、入力していないプレイヤーも含めてscoreをresetしており、クリック可能な状態がtick間に残らないことが原因だった。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/stage/common_start/input/tick.mcfunction`
  - `datapacks/pvp/data/main/function/stage/common_start/setup.mcfunction`
  - `datapacks/pvp/data/main/function/stage/common_start/begin.mcfunction`
  - `datapacks/pvp/data/main/function/stage/common_start/ready/red.mcfunction`
  - `datapacks/pvp/data/main/function/stage/common_start/ready/blue.mcfunction`
  - `datapacks/pvp/data/main/function/stage/common_start/stop.mcfunction`
  - `datapacks/pvp/data/main/function/stage/common_start/debug/refresh.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/stage/common_start/debug/solo_on.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/stage/common_start/debug/solo_off.mcfunction`（新規）
- 関連要素:
  - trigger objective: `StageReady`
  - control objective: `StageStartCtrl`
  - fake player: `#participants`、`#soloDebug`、`#redReady`、`#blueReady`
  - storage flag: `main:stage_start`の`solo_debug:1b`
  - 有効化function: `main:stage/common_start/debug/solo_on`
  - 無効化function: `main:stage/common_start/debug/solo_off`
  - `StageReady`のtick末resetを全参加者対象から`scores={StageReady=1..}`の入力済み参加者だけへ限定。未入力者は`scoreboard players enable`で得たtrigger可能状態を維持する。
  - デバッグ適用条件は`solo_debug:1b`かつ`StageStartParticipant`が正確に一人。条件成立時、自チームの確認入力に合わせて相手側のready scoreを補完する。
  - デバッグフラグは試合終了・共通開始resetでは削除せず、`solo_off`を呼ぶまで維持する。
- データパック外の変更: なし
- scoreboard.dat、コマンドブロック、world NBT、entity、座標は変更していない。

### 検証

- 静的確認:
  - `StageReady`の無条件resetが入力処理からなくなり、値が1以上の入力済みプレイヤーだけをresetすることを確認。
  - 一人用デバッグの適用条件がstorageフラグと参加者数1の両方を要求することを確認。
  - 赤一人・青一人のどちらでも、自チームready設定後に相手チームreadyを補完して既存のカウントダウンへ到達する経路を確認。
  - 二人以上またはデバッグ無効時には`#soloDebug`が0になり、相手チームreadyを補完しないことを確認。
  - 準備確認後にデバッグを有効化した場合も、参加者数を再計算してカウントダウンへ進める経路を確認。
  - `common_start`配下のfunction参照に欠落がなく、データパック内JSONがすべて正常に読み取れることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実ワールドで最初の`[準備OK]`が正常にtriggerされること、および赤・青それぞれ一人でデバッグ開始できることは未確認。
  - 一人用開始デバッグは開発用機能であり、通常運用前に`solo_off`で無効化されていることを確認する必要がある。

### パッチノート下書き素材

不具合修正

- ステージ3～7の準備確認ボタンを最初に押した際、triggerが有効になっておらず操作できない問題を修正。

開発用

- 一人でピックをデバッグする際、自分の準備確認だけで試合開始まで進める一人用開始デバッグを追加。公開パッチノートへの掲載対象外。

## 2026-08-20 — 魔王をエレメント成長型ジョブとして実装

- 状態: 実装済み
- パッチ区分: ジョブ・システム
- 対象: 魔王、Wizard系MP、職業選択、ピック、試合終了時リセット
- 公開時の重要度: 大規模

### プレイヤー向け変更内容

- (新) 火・水・風・土・光・闇の6エレメントを蓄積し、終盤へ向けて魔法が強化されるジョブ「魔王」を実装。
- 初期MPは100、最大MPは1000。魔法の素を使わず毎tick 1MPを自動回復し、魔力瓶による回復も適用される。
- 各エレメントは対応魔法で獲得し、最大72。発動時にエレメントは消費しない。
- 火、水、風、土、光、闇、炎、雷、氷、混沌の10魔法を実装。通常コストはMP200／CT20／CD100から開始し、エレメント8ごとのMP軽減には50の下限を適用。
- 水魔法は術者前方に固定した縦3×3の壁を生成し、矢、光の矢、トライデント、雪玉、卵、スプラッシュ／残留ポーション、火球、ウィンドチャージを消去する。
- 混沌魔法は光・闇10／20／30で段階的にランダム効果を解放。全6エレメント72では従来効果を停止し、MP500／CT20／CD100で相手プレイヤー全員をキルする。
- 火20でネザライト製の「魔王の剣」、風40で基礎移動速度0.1、土30で基礎体力50を獲得。
- ホットバー左端に「エレメント確認」ネザースターを固定。投げると全エレメントと選択中魔法の現在性能をtellraw表示し、直後に左端へ戻る。
- 魔王の書とスキルの書から10魔法を選択可能。各エレメントの6／8刻み、固有閾値、複合閾値到達時にも強化内容をtellraw表示する。
- 魔王は死亡時のWizardMP半減対象から除外する一方、既存の共通MPリセットの影響は受ける。
- 通常選択、BAN・ピック、時間切れランダム選択で魔王を使用可能にした。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 魔女と同系統の属性魔法を使いながら、6種のエレメントを蓄積して終盤にスケールする新ジョブとして実装するため。
- MP、対象範囲、水壁の形状と消去対象、混沌の候補、各複合条件、報酬、確認アイテム、リセット挙動はユーザーとの仕様確認結果に従った。

### 実装記録

- 追加function・data:
  - `datapacks/pvp/data/main/function/job_selection/magicking.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/`配下107 function
  - `datapacks/pvp/data/main/tags/entity_type/magicking_projectiles.json`
- 変更した主な既存function:
  - `datapacks/pvp/data/main/function/pvp/pvp_control.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/ticket/ticket_sub.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/item/magic_bottle.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/tag_reset.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/tag_reset2.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/job_pool/reset.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/job_pool/disable_unimplemented.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/timeout/random_one.mcfunction`
  - `datapacks/pvp/data/main/function/finish/finish.mcfunction`
  - `datapacks/pvp/data/main/function/kanban_jobselection.mcfunction`
- 関連要素:
  - 職業tag: `Wizard`、`MagicKing`
  - エレメントscoreboard: `MKFire`、`MKWater`、`MKWind`、`MKEarth`、`MKLight`、`MKDark`
  - 魔王専用の計算・継続・通知・所有者管理用scoreboardを初回選択時に`setup`で作成。
  - 既存scoreboard: `WizardMP`、`WizardCooldown`、`sneak`、`SelectJum`
  - 一時entity: 水壁・炎・氷・混沌位置用marker。共通`MTentity`tagを付与し、専用resetでも設置ブロックと一時attributeを復元する。
  - 混沌の重力・サイズ変更は変更前の基礎attributeを保存し、10秒経過時または試合終了時に復元する。
  - 既存の旧`job_selection/wizard.mcfunction`は外部依存の可能性がある遺物として変更せず、新しい正規入口を`main:job_selection/magicking`に分離した。
- データパック外の変更: なし
- ワールド側のscoreboard.dat、level.dat、region、entity、コマンドブロックは変更していない。既存の`main:pvp/pvp_control`呼び出し入口を利用する。

### 検証

- 静的確認:
  - 魔王の職業選択1件と専用107 function、合計108 functionの`main:`参照を検査し、欠落参照0件。
  - データパック内JSONを全件解析し、構文エラー0件。
  - 新規scoreboard objectiveはすべて16文字以内で、現在のscoreboard.datに同名の既存objectiveがないことを読み取り確認。
  - エレメント0／72の境界計算を確認。72時は通常MP50、火球威力13、水壁14秒、風70秒、土威力26・範囲12、闇CD55、炎半径12・検知20、雷／氷検知35。
  - 複数対象へ直接`damage`する不正なselectorが魔王配下に残っていないこと、全属性72の混沌がMP500／CT20／CD100のままであることを確認。
- Minecraft 1.21.5一時サーバー確認:
  - 元ワールドとは別の一時ワールドへデータパックをコピーして読込。`magicking`、`MagicKing`、`magicking_projectiles`に関する読込エラーは0件。
  - 火球、土、風、光、闇、炎、雷、氷、重力・サイズ復元の可変値function macroを最大値相当で直接展開し、エラー0件。
  - 読込検査で判明した1.21.5の投擲ポーションentity IDと複数対象`damage`構文は修正後に再検証済み。
- SJP実ワールドでの実機確認: 未実施
- 残る懸念・未確認事項:
  - 複数プレイヤーで10魔法を実際に使用した際の対象選択、チーム判定、エレメント獲得、通知、混沌のランダム効果、設置ブロックの競合は未確認。
  - 火72のExplosionPower 13、炎72の最大半径、雷・氷の最大検知範囲は負荷とバランスの実戦確認が必要。
  - 一時サーバーでは今回と無関係な既存functionの1.21.5読込エラーが残っているが、魔王関連の読込結果とは分離して確認した。

### パッチノート下書き素材

ジョブ

- 新ジョブ「魔王」を実装。
- 6種のエレメントを蓄積し、10種類の魔法を段階的に強化できるようになりました。
- 魔王はMPを毎tick自動回復し、エレメント確認用ネザースターから現在値と選択魔法の性能を確認できます。
- 火20、風40、土30で専用装備・基礎ステータス報酬を獲得します。
- 全エレメント72で、混沌の魔法が相手プレイヤー全員を倒す最終効果へ変化します。

## 2026-08-20 — 魔王の書とスキルの書を専用内容へ全面更新

- 状態: 実装済み
- パッチ区分: ジョブ・不具合修正
- 対象: 魔王の書、スキルの書、旧魔王職業選択入口
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- バグの修正: 古い魔王選択入口から選んだ場合に、旧Wizard系魔法の書籍が渡される可能性があった問題を解消。
- 魔王の書を13ページの専用詳細本へ全面更新。
  - クリック式索引、MP・エレメントの基礎ルール、10魔法の初期性能と全強化条件、到達報酬を掲載。
  - 各魔法の詳細ページにある魔法名から、その魔法を直接選択可能。
- スキルの書を4ページの魔王専用実践本へ全面更新。
  - 火・水・風・土・光・闇・炎・雷・氷・混沌を単属性、複合、最終魔法に分けて掲載。
  - 各魔法名をクリックして`SelectJum 1～10`を選択可能。
  - 各魔法が獲得するエレメントと、ネザースターによる現在性能確認を簡潔に記載。
- 旧`main:job_selection/wizard`入口は、新しい`main:job_selection/magicking`へ転送する互換入口へ変更。古い看板やcommand blockから呼ばれても新しい2冊が渡される。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 魔王の書とスキルの書が新しいエレメント型魔王の内容になっていないとの報告を受け、現在の10魔法と強化仕様に合わせるため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/magicking.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/wizard.mcfunction`
- 追加function:
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_skill_book.mcfunction`
- 関連要素:
  - item: `minecraft:written_book`
  - item component: `minecraft:written_book_content`
  - text component: `click_event`の`change_page`と`run_command`
  - scoreboard: `SelectJum`
  - 魔王職業選択時はネザースター付与後に2つの専用give functionを呼び、ホットバー上でネザースター、魔王の書、スキルの書の順に入る。
- データパック外の変更: なし
- ワールド内の既存看板、command block、region/NBTは直接変更していない。旧function名の転送によって互換性を維持する。

### 検証

- 静的確認:
  - 魔王の書は13ページ相当、スキルの書は4ページ相当の構成で、両方に`SelectJum 1～10`の選択が各1件ずつ存在することを確認。
  - 2つのbook commandの波括弧・角括弧が一致し、職業選択および旧互換入口のfunction参照に欠落がないことを確認。
- Minecraft 1.21.5一時サーバー確認:
  - 2つのbook functionだけを含む最小データパックを一時ワールドへ読み込み、読込エラー0件。
- SJP実ワールドでの実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際の本画面で各ページの文章が意図した位置で改行されること、索引のページ移動と10魔法の選択クリックがすべて操作できることは未確認。
  - 既に所持している旧書籍は自動置換されず、魔王を選び直した時点で新しい書籍が付与される。

### パッチノート下書き素材

ジョブ

魔王

- 魔王の書を、基礎ルール、10魔法の詳細、全強化条件、到達報酬を確認できる専用本へ更新。
- スキルの書を、10魔法を素早く選択できる魔王専用の実践本へ更新。
- 古い魔王選択入口から選んだ場合も、新しい魔王の書とスキルの書が渡されるよう修正。

## 2026-08-20 — 魔王の書とスキルの書の役割を形式どおりに分離

- 状態: 実装済み
- パッチ区分: ジョブ・不具合修正
- 対象: 魔王の書、スキルの書
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 魔王の書を、10魔法の性能説明だけを掲載する10ページの説明書へ修正。
  - 選択操作、基礎ルール、到達報酬、ネザースターの案内を削除。
  - 各ページに1魔法ずつ、初期性能とエレメントによる強化内容を掲載。
- スキルの書を、10魔法の選択だけを行う2ページの選択本へ修正。
  - 性能説明、分類見出し、初期値、エレメントとネザースターの案内を削除。
  - 火・水・風・土・光・闇・炎・雷・氷・混沌の魔法名だけを表示し、クリックで選択する。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 既存の魔法職と同じ書籍フォーマットに従い、魔王の書はスキル説明専用、スキルの書はスキル選択専用として役割を分離するため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_skill_book.mcfunction`
- 関連要素:
  - item: `minecraft:written_book`
  - item component: `minecraft:written_book_content`
  - スキルの書だけが`click_event`の`run_command`を使用し、scoreboard `SelectJum`の1～10を選択する。
  - 魔王の書には`click_event`と`SelectJum`操作を含めない。
- データパック外の変更: なし
- ワールド内の既存看板、command block、region/NBTは変更していない。

### 検証

- 静的確認:
  - 魔王の書に10魔法が各1件あり、`click_event`、`SelectJum`、基礎ルール、到達報酬、ネザースター案内が0件であることを確認。
  - スキルの書に10魔法が各1件、`click_event`と`SelectJum`が各10件あり、性能説明・初期値・エレメント案内が0件であることを確認。
  - 両書籍commandの波括弧・角括弧が一致し、職業選択functionからの参照が存在することを確認。
- Minecraft 1.21.5一時サーバー確認:
  - 2つのbook functionだけを含む最小データパックを一時ワールドへ読み込み、両functionを実行。読込・実行エラー0件。
- SJP実ワールドでの実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際の本画面で10ページの説明がページ内に収まること、およびスキルの書の10個の選択クリックがすべて操作できることは未確認。
  - 既に所持している修正前の書籍は自動置換されず、魔王を選び直した時点で修正版が付与される。

### パッチノート下書き素材

ジョブ

魔王

- 魔王の書を、10魔法の性能説明だけを確認できる説明書へ修正。
- スキルの書を、10魔法の選択だけを行う選択本へ修正。

## 2026-08-21 — 魔王の書の数値表記統一とスキルの書の1ページ化

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王の書、スキルの書
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- 魔王の書にあるMP、CT、CDの表記を、既存スキルと同じ小文字・コロン形式へ統一。
  - 例: `MP200 CT20 CD100` → `mp:200 ct:20 cd:100`
  - 強化欄の増減値と変更後の値も`mp:`、`ct:`、`cd:`形式へ統一。
- スキルの書を2ページから1ページへ変更。
  - 10魔法を1行ずつ連続表示し、項目間の空行を削除。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 既存スキルと数値表記を揃え、スキルの書を一覧として1ページ内で操作できるようにするため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_skill_book.mcfunction`
- 関連要素:
  - item: `minecraft:written_book`
  - item component: `minecraft:written_book_content`
  - スキル選択用scoreboard: `SelectJum`
- データパック外の変更: なし
- ワールド内の看板、command block、region/NBTは変更していない。

### 検証

- 静的確認:
  - 魔王の書に旧形式の大文字MP／CT／CD表記が0件で、10魔法すべてに`mp:200 ct:20 cd:100`が1件ずつあることを確認。
  - スキルの書が1ページ、10項目、9改行、空行0であり、`click_event`と`SelectJum`が各10件あることを確認。
  - 両書籍commandの波括弧・角括弧が一致することを確認。
- Minecraft 1.21.5一時サーバー確認:
  - 2つのbook functionだけを含む最小データパックを一時ワールドへ読み込み、両functionを実行。読込・実行エラー0件。
- SJP実ワールドでの実機確認: 未実施
- 残る懸念・未確認事項:
  - スキルの書の10項目が実際の本画面で1ページ内に収まり、各クリック範囲を正常に操作できることは未確認。
  - 既に所持している修正前の書籍は自動置換されず、魔王を選び直した時点で修正版が付与される。

### パッチノート下書き素材

ジョブ

魔王

- 魔王の書のMP／CT／CD表記を既存スキルと同じ形式へ統一。
- スキルの書を1ページにまとめ、10魔法を空行なしで一覧表示するよう変更。

## 2026-08-21 — 魔王のアクションバー数値表記を統一

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王の10魔法、アクションバー
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- 火、水、風、土、光、闇、炎、雷、氷、混沌のアクションバー表記を既存スキルと同じ構成へ統一。
- 魔法名の直後に、必要値を小文字の`mp:`、`ct:`、`cd:`で表示。
- その後に、現在値を大文字の`MP:`、`CT:`、`CD:`で表示。
- エレメント強化によって変動した必要MP、CT、CDを、計算済みscoreboardから表示する。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 魔王のアクションバーも、他のスキルと同じMP／CT／CD表記に揃えるため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/fire/prepare.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/water/prepare.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/prepare.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/earth/prepare.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/light/prepare.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/dark/prepare.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/flame/prepare.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/thunder/prepare.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/ice/prepare.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/chaos/prepare.mcfunction`
- 関連要素:
  - 必要値scoreboard: `MKCost`、`MKCast`、`MKCD`
  - 現在値scoreboard: `WizardMP`、`sneak`、`WizardCooldown`
  - 表示先: `title @s actionbar`
- データパック外の変更: なし
- ワールド内のscoreboard.dat、command block、region/NBTは変更していない。

### 検証

- 静的確認:
  - 10個の`prepare.mcfunction`すべてに、必要値側の`mp:`／`ct:`／`cd:`と現在値側の`MP:`／`CT:`／`CD:`が各1件あることを確認。
  - 全表示が`MKCost`、`MKCast`、`MKCD`、`WizardMP`、`sneak`、`WizardCooldown`を各1回参照することを確認。
  - 10件のアクションバーJSONを解析し、すべて正常であることを確認。
- Minecraft 1.21.5一時サーバー確認:
  - 10個の`prepare` functionを含む最小データパックを一時ワールドへ読み込み、全functionを実行。読込・実行エラー0件。
- SJP実ワールドでの実機確認: 未実施
- 残る懸念・未確認事項:
  - 実プレイヤー画面で、最大3桁の各数値を含むアクションバー全体が横幅内に収まることは未確認。
  - 実際の詠唱中に、エレメント強化後の必要値と現在値が意図した色・順番で表示されることは未確認。

### パッチノート下書き素材

ジョブ

魔王

- 10魔法のアクションバーに表示されるMP／CT／CDの形式を、他のスキルと統一。

## 2026-08-21 — ピックフェーズのチーム表記を赤・青へ統一

- 状態: 実装済み
- パッチ区分: システム
- 対象: ピックフェーズのファーストピック通知、ステージ選択、BAN、ジョブピック、bossbar
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- ピックフェーズのシステムメッセージとbossbarで使用していた「チームA」「チームB」表記を廃止し、「赤チーム」「青チーム」へ統一。
- ファーストピック通知は、選出されたプレイヤー名の後に実際の所属チームを表示。
- ステージ選択・作戦会議、BAN、ファーストピック、1人ピック、2人ピックの各表示で、現在操作する実チームを表示。
- ピック順、操作権、制限時間などのゲーム進行は変更していない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- プレイヤー向け表示に内部的な先攻・後攻識別であるチームA／Bを使用せず、実際の赤／青チーム表記へ統一するため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/pick/start.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/stage_a.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/stage_b.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/ban_a.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/ban_b.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/pick_a_first.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/pick_a_one.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/pick_a_two.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/pick_b_one.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/pick_b_two.mcfunction`
- 関連要素:
  - 内部tag: `PickFirst`、`PickTeamA`、`PickTeamB`
  - 表示先: tellraw、storage `main:pick`の`ui.task`、bossbar `main:pick`
  - `PickFirst`が赤チームの場合はA側を赤・B側を青、青チームの場合はA側を青・B側を赤として表示。
  - 無人側チームのフェーズもデバッグ中に進行できるよう、表示色判定は必ず存在する`PickFirst`のteamを基準にしている。
  - ピック順制御に使う`PickTeamA`／`PickTeamB`という内部tag名は互換性維持のため変更していない。
- データパック外の変更: なし
- scoreboard.dat、コマンドブロック、world NBT、entity、座標は変更していない。

### 検証

- 静的確認:
  - ピックfunction配下の表示文字列に「チームA」「チームB」「Team A」「Team B」が残っていないことを確認。
  - A側5フェーズで、ファーストピックが赤なら赤表示、青なら青表示になることを確認。
  - B側4フェーズで、ファーストピックが赤なら青表示、青なら赤表示になることを確認。
  - 内部の`PickTeamA`／`PickTeamB`tagと、それを使う操作対象selectorが維持されていることを確認。
  - データパック内JSONがすべて正常に読み取れることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実ワールドでファーストピックが赤の場合と青の場合の両方について、全フェーズのtellrawとbossbarが正しい色名を表示することは未確認。

### パッチノート下書き素材

システム

- ピックフェーズの「チームA」「チームB」表記を廃止し、実際の「赤チーム」「青チーム」表記へ統一。

## 2026-08-22 — 魔王の全魔法の初期MPと下限値を変更

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、火・水・風・土・光・闇・炎・雷・氷・混沌の魔法
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 全10魔法の通常時消費MP: 200 → 300
- 通常9魔法のエレメント8ごとの消費MP減少量: 30（変更なし）
- 通常9魔法の消費MP下限: 50 → 100
- 混沌の魔法は通常時300へ変更し、全6エレメント72時の消費MP500は変更なし。
- 魔王の書と、消費MP低下時のtellraw通知を変更後の値へ更新。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 魔王の全魔法の初期MPを300へ引き上げ、従来の30ずつの減少割合を維持したまま下限を100へ変更するため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/util/cost_fire.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/util/cost_water.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/util/cost_wind.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/util/cost_earth.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/util/cost_light.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/util/cost_dark.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/chaos/calculate.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/fire.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/water.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/light.mcfunction`
- 関連要素:
  - 消費MP計算scoreboard: `MKCost`、`MKCount`
  - エレメントscoreboard: `MKFire`、`MKWater`、`MKWind`、`MKEarth`、`MKLight`、`MKDark`
  - 計算定数: fake player `#8`、`#30`の`MKCalc`
  - 通常9魔法は`300 - 30 × floor(対応エレメント / 8)`を計算後、100未満を100へ補正する。
- データパック外の変更: なし
- scoreboard.dat、command block、world NBT、entity、座標は変更していない。

### 検証

- 静的確認:
  - 6つの共通コスト計算functionが、初期値300・8ごとに30減少・下限100で統一されていることを確認。
  - 魔王配下に旧設定`MKCost 200`、`MKCost 50`、`mp:200`、`下限50`が残っていないことを確認。
  - 魔王の書に初期値300が10件、下限100が9件、混沌最終効果のMP500が1件あることを確認。
  - 境界計算としてエレメント0で300、8で270、63以上で100になることを確認。
- Minecraft 1.21.5一時サーバー確認:
  - 変更したコスト計算functionと魔王の書を含む最小データパックを読み込み、読込エラー0件。
  - 火のコスト計算を実行し、エレメント0で300、8で270、72で100になることを確認。
  - 混沌のコスト計算を実行し、通常時300、全6エレメント72時500になることを確認。
- SJP実ワールドでの実機確認: 未実施
- 残る懸念・未確認事項:
  - 実プレイヤーが各魔法を発動した際、アクションバー・MP減算・不足時の発動拒否が10魔法すべてで一致することは未確認。
  - 更新後の魔王の書が実際の本画面でページ内に収まることは未確認。

### パッチノート下書き素材

ジョブ

魔王

- 全魔法の通常時消費MPを200から300へ変更。
- エレメント8ごとの消費MP減少量30は維持し、消費MP下限を50から100へ変更。
- 全エレメント72時の混沌の魔法は、消費MP500のまま変更なし。

## 2026-08-22 — 職業選択全体リセットから魔王専用リセットを除外

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、職業選択全体リセット
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- 職業選択一覧の全体リセット時に、魔王専用のエレメント・一時状態リセットを実行しないよう変更。
- 全体リセット時の`MagicKing`職業tag削除と共通ステータスリセットは変更なし。
- 個別の職業選択時と試合終了時は、従来どおり魔王専用リセットを実行する。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 職業選択全体のリセットでは、魔王専用リセットを発動させない指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/tag_reset.mcfunction`
  - `datapacks/pvp/data/main/function/finish/finish.mcfunction`
- 関連要素:
  - function: `main:pvp/magicking/reset_player`、`main:job_selection/tag_reset`、`main:job_selection/tag_reset2`
  - tag: `MagicKing`
  - scoreboard: `MKFire`、`MKWater`、`MKWind`、`MKEarth`、`MKLight`、`MKDark`ほか魔王専用一時値
  - 全体で共有する`tag_reset`から専用リセット呼び出しを削除し、試合終了処理へ直接移した。これにより`job_select_reset`経路だけが専用リセットを呼ばない。
- データパック外の変更: なし
- ワールド内の全MCAデータを文字列走査し、`main:pvp/magicking/reset_player`を直接呼ぶコマンドは見つからなかった。

### 検証

- 静的確認:
  - `job_select_reset`から到達する`tag_reset`に魔王専用リセット呼び出しがないことを確認。
  - `tag_reset`の`tag @a remove MagicKing`と、`job_select_reset`の共通`state_reset`が残っていることを確認。
  - 魔王専用リセットの呼び出しが、個別職業選択用`tag_reset2`と試合終了処理の2か所だけであることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実ワールドで職業選択全体リセットを実行した際の、魔王のエレメントscoreboardと一時attributeの実際の残り方は未確認。

### パッチノート下書き素材

ジョブ

魔王

- 職業選択全体のリセット時に、魔王専用リセットが発動しないよう変更。

## 2026-08-22 — 魔王の闇魔法の効果時間強化を削除

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、闇の魔法
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 闇エレメント6ごとの強化: `持続時間+5秒・移動速度低下レベル+1` → `移動速度低下レベル+1`
- 闇の魔法が与える移動速度低下、暗闇、跳躍力上昇200の効果時間を、闇エレメント数にかかわらず5秒で固定。
- 魔王の書と、闇エレメント6ごとの強化到達tellrawから効果時間延長の記述を削除。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 闇の魔法のデバフ効果時間が、エレメントによって延長されない仕様へ変更するため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/dark/calculate.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/dark.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - scoreboard: `MKDark`、`MKLevel`、`MKDuration`
  - effect: `minecraft:slowness`、`minecraft:darkness`、`minecraft:jump_boost`
  - item: `魔王の書`（`minecraft:written_book`）
  - `MKLevel = floor(MKDark / 6)`による移動速度低下レベル計算は維持し、`MKDuration`への`5 × MKLevel`加算だけを削除した。
- データパック外の変更: なし
- command block、world NBT、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 闇魔法の計算が`MKDuration 5`の固定設定だけになり、持続時間加算が残っていないことを確認。
  - 闇6ごとの`MKLevel`計算、MP・CT・CD、対象数など他の強化処理が維持されていることを確認。
  - 魔王の書と到達tellrawに「闇6毎 持続+5秒」「闇魔法の持続+5秒」が残っていないことを確認。
  - 魔王の書が10ページを維持し、括弧と文字列の構造が正常であることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際の戦闘で、闇エレメント0～72のすべての段階において3種類のデバフが5秒で終了することは未確認。

### パッチノート下書き素材

ジョブ

魔王

スキル：闇の魔法

- 闇エレメント6ごとの効果時間+5秒を削除。移動速度低下レベル+1は変更なし。
- 移動速度低下、暗闇、跳躍力上昇200の効果時間を5秒で固定。

## 2026-08-22 — 魔王の闇魔法の移動速度低下をレベルVIで制限

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、闇の魔法
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 闇の魔法が与える移動速度低下の上限: 上限なし → レベルVI
- 闇エレメント6ごとの移動速度低下レベル+1は維持し、闇エレメント30でレベルVIへ到達。闇エレメント30～72ではレベルVIのままになる。
- アクションバーの現在性能表示と魔王の書へ上限VIを反映。
- 上限到達後の闇エレメント36以降では、移動速度低下レベル上昇のtellrawを表示しないよう変更。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 闇の魔法の移動速度低下レベルに上限6を設定する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/dark/calculate.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/dark.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - scoreboard: `MKDark`、`MKLevel`、`MKPower`
  - effect: `minecraft:slowness`
  - item: `魔王の書`（`minecraft:written_book`）
  - Minecraftのeffect amplifierは表示レベルより1小さいため、`MKLevel`を最大5へ補正して移動速度低下VIとして付与する。
  - 到達通知では変更前後の内部レベルを両方最大5へ補正して比較し、上限後の通知を抑止する。
- データパック外の変更: なし
- command block、world NBT、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 闇エレメント0でレベルI、6でII、12でIII、24でV、30でVI、36・70・72でもVIになる境界計算を確認。
  - 実際の付与に使う`MKLevel`とアクションバー表示用の値が、同じ上限処理を通ることを確認。
  - 通知判定の変更前後の値が両方上限補正され、闇36以降にレベル上昇通知が発生しないことを確認。
  - 魔王の書が`闇6毎 鈍足Lv+1(上限VI)`になり、10ページ構造と括弧の対応が維持されていることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際の戦闘とアクションバーで、闇エレメント30以上の表示・付与が移動速度低下VIになることは未確認。

### パッチノート下書き素材

ジョブ

魔王

スキル：闇の魔法

- 移動速度低下レベルの上限をVIに変更。闇エレメント30で上限へ到達する。

## 2026-08-22 — 魔王の闇魔法の移動速度低下強化間隔を変更

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、闇の魔法
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 移動速度低下レベルの強化間隔: 闇エレメント6ごと → 闇エレメント15ごと
- 移動速度低下の段階を、闇0～14でI、15～29でII、30～44でIII、45～59でIV、60～72でVへ変更。
- 上限VIの設定は維持。ただしエレメント最大値が72のため、通常プレイで到達できる最高値はレベルVとなる。
- 効果時間5秒、消費MP・CT・CD、暗闇、対象数、跳躍力上昇200など、闇魔法のほかの性能は変更なし。
- 魔王の書の記述を`闇15毎 鈍足Lv+1(上限VI)`へ更新。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 闇の魔法がまだ強すぎるため、移動速度低下のレベルアップに必要な闇エレメントを増やす指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/dark/calculate.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/dark.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - scoreboard: `MKDark`、`MKPrev`、`MKLevel`、`MKPower`
  - effect: `minecraft:slowness`
  - item: `魔王の書`（`minecraft:written_book`）
  - 新しい計算定数に依存させず、闇15・30・45・60・75の閾値でeffect amplifierを0～5に設定する。
  - 到達通知も同じ閾値で変更前後のレベルを比較する。
- データパック外の変更: なし
- command block、world NBT、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 闇0、14、15、29、30、44、45、59、60、72の境界値で、表示レベルがI、I、II、II、III、III、IV、IV、V、Vになることを確認。
  - 闇魔法の計算・通知から旧`#6 MKCalc`によるレベル計算がなくなり、15刻みの閾値へ統一されていることを確認。
  - 消費MP・CDの8刻み計算と、CT・対象数・追加効果の閾値が変更されていないことを確認。
  - 魔王の書に旧`闇6毎 鈍足Lv+1`が残っておらず、10ページ構造と括弧の対応が維持されていることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際の戦闘とアクションバーで各境界値の移動速度低下レベルが正しく切り替わることは未確認。

### パッチノート下書き素材

ジョブ

魔王

スキル：闇の魔法

- 移動速度低下レベルの強化間隔を、闇エレメント6ごとから15ごとへ変更。
- エレメント最大値72で到達できる移動速度低下はレベルVまでとなる。

## 2026-08-23 — 魔王の炎魔法の持続時間強化を調整

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、炎の魔法
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 風エレメント6ごとの炎の持続時間増加: +5秒 → +3秒
- 炎の持続時間上限: 上限なし → 20秒
- 持続時間を、風0～5で5秒、6～11で8秒、12～17で11秒、18～23で14秒、24～29で17秒、30～72で20秒へ変更。
- 風魔法の持続時間+5秒と雷魔法の検知範囲+1mは変更なし。
- 魔王の書の記述を`風6毎 持続+3秒(上限20秒)`へ更新。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 炎の魔法の持続時間増加量を3秒へ変更し、最大20秒に制限する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/flame/calculate.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/wind.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - scoreboard: `MKWind`、`MKDuration`、`MKCount`、`MKPrev`、`MKPower`、`MKLevel`
  - 計算式: `min(5 + 3 × floor(MKWind / 6), 20)`
  - 炎の持続時間は発動時に`#flame_timer MKCalc`へ秒数をコピーし、20を掛けてtickへ変換する既存処理を引き続き使用する。
  - 風6刻みの通知を「風魔法・雷魔法」と「炎魔法」に分離し、炎魔法の通知は20秒へ到達する風30までに限定した。
  - item: `魔王の書`（`minecraft:written_book`）
- データパック外の変更: なし
- command block、world NBT、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 風0、5、6、11、12、18、24、29、30、36、72で、炎の持続時間が5、5、8、8、11、14、17、17、20、20、20秒になることを確認。
  - 20秒を超える計算結果が`MKDuration 20`へ補正されることを確認。
  - 風30までは炎の持続時間+3秒通知が出て、風36以降は炎の通知だけが止まる計算であることを確認。
  - 風魔法の持続時間+5秒、雷魔法の検知範囲+1m、炎魔法の検知範囲+2mに関する既存処理が維持されていることを確認。
  - 魔王の書が変更後の増加量と上限を表示し、10ページ構造と括弧の対応が維持されていることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際の戦闘で炎が各境界値どおりの秒数で消えることと、tellrawの表示タイミングは未確認。

### パッチノート下書き素材

ジョブ

魔王

スキル：炎の魔法

- 風エレメント6ごとの持続時間増加を+5秒から+3秒へ変更。
- 持続時間の上限を20秒に変更。

## 2026-08-23 — ピック人数判定を復元しデバッグ適用を人数不足時へ限定

- 状態: 実装済み
- パッチ区分: システム
- 対象: ピックフェーズ、デバッグモード
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 赤・青チームが各2人の場合は、2vs2用のピックシステムを開始するよう変更。
- 赤・青チームが各3人の場合は、3vs3用のピックシステムを開始するよう変更。
- 正規人数を満たさない場合だけ、デバッグモードとして3vs3用のピック順を使用するよう変更。
- 参加者がいない場合、または片方のチームが4人以上の場合は、ピックを開始せず理由を表示するよう変更。
- 通常の2vs2・3vs3開始後に参加人数が不足した場合は、進行不能になる前にピックフェーズを中止するよう変更。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 以前のデバッグ用3vs3固定を、人数不足時のテストに限って使用し、正規人数が揃っている場合は2vs2・3vs3を自動判定する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/pick/start.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/tick.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/timeout/pick.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/reset.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/abort/player_count.mcfunction`（新規）
- 関連要素:
  - scoreboard: `PickCtrl`
  - fake player: `#redCount`、`#blueCount`、`#teamSize`、`#debug`、`#onlineRed`、`#onlineBlue`
  - tag: `PickParticipant`、`PickAllowed`
  - ルール番号は既存仕様どおり、20=2vs2 BANなし、21=2vs2 BANあり、30=3vs3 BANなし、31=3vs3 BANあり。
  - 人数不足デバッグでは、従来の確認済み方針どおり3vs3用のピック順を使用し、存在しない選択枠は時間切れ処理で完了扱いにする。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更していない。

### 検証

- 静的確認:
  - 赤2人・青2人で2vs2、赤3人・青3人で3vs3を選択する条件を確認。
  - 正規人数以外かつ各チーム3人以下の場合だけ、`#debug=1`として3vs3用ルールを選択することを確認。
  - 参加者0人と片チーム4人以上を開始前に拒否する条件を確認。
  - 通常モードだけ、開始後の赤・青各チーム人数を検査して中止処理を呼ぶことを確認。
  - 人数不足枠の自動完了がデバッグモードだけで実行されることを確認。
  - 変更したfunction内の参照先が存在すること、およびデータパック内JSONの構文を確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - BANあり・なしの各2vs2、3vs3が実際のプレイヤー構成で正しい順序へ進むことは未確認。
  - 人数不足デバッグ時に、欠員の位置が異なる各パターンで最後まで進行できることは未確認。
  - 通常ピック中の退出・チーム変更時に中止メッセージとリセットが期待どおり表示・実行されることは未確認。

### パッチノート下書き素材

システム

ピックフェーズ

- 参加人数から2vs2・3vs3を自動判定し、それぞれに対応するピック順で開始するよう変更。
- 人数不足時だけ3vs3用のデバッグ進行を使用するよう変更。

## 2026-08-24 — コインゲートにクールダウン表示を追加

- 状態: 実装済み
- パッチ区分: システム
- 対象: ショップモード、ダイヤモンド回収スポット
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 各回収スポットの頭上表示を`◆ コインゲート ◆`へ統一。
- 回収後の150秒クールダウンを、`2:30`から`0:01`まで1秒単位で表示するよう変更。
- 残り61秒以上は赤、残り1～60秒は黄、回収可能時は緑の表示と粒子で状態を示すよう変更。
- 回収可能になった瞬間、周囲24ブロック以内のプレイヤーへビーコン起動音を再生するよう変更。
- 5秒継続で回収、スポットから離れても回収進捗を保持、試合終了後に進捗をリセットする既存・確認済み仕様は維持。

### 理由・背景

- 根拠区分: ユーザー確認済み
- コインゲートが再び利用できるまでの時間と現在の状態を、戦闘中でも正確かつ直感的に把握できるようにするため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/diamond/dia.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/dia_red.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/dia_mid.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/dia_blue.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/dia_red_sub.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/dia_mid_sub.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/dia_blue_sub.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/`配下の21 function（新規）
  - `datapacks/pvp/data/main/function/finish/finish.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/senzyouhe.mcfunction`
- 関連要素:
  - scoreboard: `ShopGateCD`、`diamond`、`ShopSetting`、`sneak2`
  - fake player: `#red`、`#mid`、`#blue`、`#visualTick`、`#20`、`#60`
  - storage: `main:shop_gate`
  - entity tag: `CoinGateAnchor`、`CoinGateDisplay`、`CoinGateDisplayRed`、`CoinGateDisplayMid`、`CoinGateDisplayBlue`
  - 既存の`dia`、`diared`、`diamid`、`diablue`、`diacooldown*`付きArmor Standは、座標アンカーとして維持し、読込時に新表示へ移行する。
  - 回収報酬は現行仕様の物理ダイヤモンドを維持。スコア通貨と新ショップコンソールへの移行は本変更の対象外。
  - クールダウンはschedule依存から、`ShopGateCD`を毎tick減算する方式へ変更。旧scheduleの実行が残っていても新状態へ復帰する互換入口を残した。
- データパック外の変更: なし
- 既存のワールド側入口は変更していない。確認済みのコマンドブロック`(-10028, 3, 5009)`から、`ShopSetting=1`のとき`main:mode/shop/diamond/dia`を呼ぶ構成を引き続き利用する。

### 検証

- 静的確認:
  - 新規21 functionの存在と、変更した全function参照先の存在を確認。
  - 変更範囲のJSON text componentがJSONとして解釈できることを確認。
  - 旧3001tick scheduleの新規登録が残っていないことを確認。
  - 表示名が`◆ コインゲート ◆`へ統一されていることを確認。
  - クールダウンが3000tickで開始し、境界値が`2:30`赤、`1:01`赤、`1:00`黄、`0:01`黄、回収可能時は緑になる計算を確認。
  - 回収可能への遷移時だけ効果音と緑粒子を発生させる呼び出しを確認。
  - 試合終了処理と次試合開始処理から、ゲート状態とプレイヤー回収進捗をリセットすることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実ワールド上での`text_display`の高さ、文字の見え方、向き、遮蔽状態は未確認。
  - 赤・黄・緑の粒子量と視認距離が戦闘中に適切かは未確認。
  - 回収可能音の音量と24ブロックの聞こえ方は未確認。
  - 既存の赤・中央・青スポットすべてが、チャンク読込後に正しい表示へ移行することは未確認。

### パッチノート下書き素材

システム

コインゲート

- 頭上に正確な残りクールダウン時間を表示するよう変更。
- 残り時間に応じて、表示と粒子が赤・黄・緑へ変化するよう変更。
- 回収可能になった瞬間に効果音を再生するよう変更。

## 2026-08-24 — 魔王の風の魔法を爆風スキルへ刷新

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、風の魔法
- 公開時の重要度: 大規模

### プレイヤー向け変更内容

- 風の魔法を、速度上昇を付与する魔法から、術者の2m上で発生する爆風により術者以外の周囲entityを吹き飛ばす魔法へ刷新。
- 初期爆風威力を1.5、初期範囲を8mに設定。
- 発動時、8m以内に敵playerがいる場合だけ風エレメントを1獲得するよう変更。
- 風6ごと: 爆風威力+1。
- 風8ごと: 消費MP-30（下限100）、爆風範囲+2m。
- 風20: 自身へ速度上昇Iを15秒付与。
- 風30: CTを10へ短縮し、速度上昇をIIへ強化。
- 風40: 速度上昇をIIIへ強化。既存の到達報酬である基礎移動速度0.1は維持。
- 風50: CTを5へ短縮し、速度上昇をIVへ強化。
- 風70: 速度上昇IV（15秒）の対象を全ての味方entityへ変更。
- 旧仕様の風6ごとの持続時間増加、風8ごとの速度レベル増加、風40の跳躍力上昇IIを削除。
- MP 300、CD 100、風8ごとのMP減少量30、MP下限100は維持。

### 理由・背景

- 根拠区分: ユーザー確認済み
- データ駆動型エンチャントの`minecraft:explode`でダメージを伴わない吹き飛ばしを発生させる試験結果を、魔王の風の魔法へ流用する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/enchantment/magic_king_wind_burst.json`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/main.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/reset_player.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/reset_world.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/calculate.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/cast.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/summon_burst.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/equip_burst.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/move_burst.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/cleanup_burst.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/apply_self.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/apply_blue.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/apply_red.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/apply_blue_entity.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/apply_red_entity.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/wind.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/wind.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/reward/wind40.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - enchantment: `main:magic_king_wind_burst`
  - enchantment effect: `minecraft:location_changed`、`minecraft:explode`
  - entity/tag: 一時Armor Stand、`MKWindBurst`、`MKWindBurstNew`
  - scoreboard: `MKWind`、`MKCost`、`MKCast`、`MKCD`、`MKRange`、`MKPower`、`MKLevel`、`MKCount`、`MKTimer`、`MKOwner`
  - storage: `main:magicking`（エンチャントレベルと速度effect amplifierのmacro引数）
  - attribute modifier: `minecraft:explosion_knockback_resistance`の`main:magic_king_wind_self`
  - team: `Red`、`Blue`
  - item: `魔王の書`、爆風発生用の一時的な`minecraft:stick`
  - 風エレメント0～72をエンチャントレベル1～73へ対応させ、`minecraft:lookup`で威力と半径を別周期で決定する。
  - Armor Standは召喚の次tickに2m上へ移動し、さらに次tickに回収する。一時Armor Stand自身と術者には爆発ノックバック耐性を付け、術者以外を吹き飛ばす。
- データパック外の変更: なし
- `main:pvp/pvp_control`から既存の`main:pvp/magicking/main`を呼ぶ経路は確認。command block、world NBT、座標は本変更では再調査・変更していない。

### 検証

- 静的確認:
  - 新規エンチャントJSONと既存試験用JSONがJSONとして解釈できることを確認。
  - `minecraft:lookup`の威力・半径が各73値あり、風0、5、6、7、8、19、20、29、30、39、40、49、50、69、70、71、72で仕様どおりになることを確認。
  - 風0で威力1.5・半径8m・MP300・CT20、風72で威力13.5・半径26m・MP100・CT5になることを確認。
  - 速度上昇が風20/30/40/50でI/II/III/IVになり、風70で全味方entityを対象にする分岐を確認。
  - 8m以内の敵player判定が成功した場合だけ`add_wind`を呼ぶことを確認。
  - 一時Armor Standの召喚、装備、2m移動、次tick回収、術者耐性解除、個人・ワールドリセット時の回収経路を確認。
  - 変更した風魔法functionの参照先が存在し、旧持続時間・速度レベル・跳躍上昇の通知文が現行functionに残っていないことを確認。
  - 魔王の書とエレメント確認表示が新しい威力、範囲、速度バフを表示することを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 新しい動的エンチャントのクライアント同期にはサーバー再起動と再接続が必要。
  - 実際の戦闘で爆風が一度だけ発生し、術者だけが吹き飛ばされず、味方・敵・mobなど他entityが期待した距離だけ吹き飛ぶことは未確認。
  - 風70の全味方entityへの速度上昇と、風エレメント獲得の敵距離境界は実機未確認。

### パッチノート下書き素材

ジョブ

魔王

スキル：風の魔法

- 術者の2m上で爆風を発生させ、術者以外の周囲entityを吹き飛ばす魔法へ刷新。
- 初期爆風威力を1.5、初期範囲を8mに設定。
- 風6ごとに威力+1、風8ごとに範囲+2m・MP-30。
- 風20以降、自身へ15秒の速度上昇を付与し、風30/40/50でII/III/IVへ強化。
- 風70で速度上昇IVの対象を全ての味方entityへ変更。

## 2026-08-24 — コインゲート表示を1.21.5のSNBT形式へ修正

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: コインゲートの`text_display`
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: コインゲートのテキストが旧バージョン用のJSON文字列形式で記述されていた問題を修正。
- `◆ コインゲート ◆`、回収可能表示、残り時間表示をMinecraft Java Edition 1.21.5のテキストコンポーネント形式へ変更。

### 理由・背景

- 根拠区分: ユーザー確認済み
- ユーザーから、実装したテキストが旧バージョン用になっているとの報告を受けたため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/migrate.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/render/ready.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/render/cooldown.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/render/cooldown_zero.mcfunction`
- 関連要素:
  - entity: `minecraft:text_display`
  - entity tag: `CoinGateDisplayRed`、`CoinGateDisplayMid`、`CoinGateDisplayBlue`
  - 旧形式の`text:'[{"text":...}]'`を、テキストコンポーネントをNBTへ直接格納する`text:[{text:'...',...}]`形式へ変更。
  - 太字指定を直接SNBT内の`bold:1b`へ変更。
- データパック外の変更: なし
- command block、scoreboard、既存entity、座標は変更していない。

### 検証

- 静的確認:
  - コインゲート配下に旧JSON文字列形式の`text:'[{...}]'`が0件であることを確認。
  - 新規生成3コマンドと、通常表示1・残り時間表示2の更新functionが、直接SNBT形式になっていることを確認。
  - `datapacks/pvp/pack.mcmeta`の`pack_format`が対象バージョン用の71であることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後に全functionが読み込まれ、実ワールド上で改行・色・太字・残り時間が正しく表示されることは未確認。

### パッチノート下書き素材

不具合修正

コインゲート

- コインゲートのテキスト表示がMinecraft Java Edition 1.21.5の形式になっていなかった不具合を修正。

## 2026-08-24 — 魔王の風魔法の爆風成長量を調整

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、風の魔法
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 風エレメント6ごとの爆風威力増加: +1 → +0.5。
- 風エレメント8ごとの爆風範囲増加: +2m → +1m。
- 初期爆風威力1.5、初期範囲8m、消費MP減少量30とMP下限100は変更なし。
- 風72での爆風威力: 13.5 → 7.5。
- 風72での爆風範囲: 26m → 17m。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 風魔法のエレメントによる爆風威力と範囲の成長量を抑える指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/enchantment/magic_king_wind_burst.json`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/calculate.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/wind.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/wind.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - enchantment: `main:magic_king_wind_burst`
  - scoreboard: `MKWind`、`MKRange`、`MKPower`、`MKLevel`、`MKCount`、`MKDuration`
  - item: `魔王の書`
  - `minecraft:lookup`の風0～72に対応する73値を、威力は`1.5 + 0.5 × floor(MKWind / 6)`、範囲は`8 + floor(MKWind / 8)`へ更新。
  - 性能確認では、0.5単位で保持した威力を`.0`または`.5`で表示する。
- データパック外の変更: なし
- command block、world NBT、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - エンチャントJSONの威力・範囲lookupが各73値あることを確認。
  - 風0、5、6、7、8、11、12、19、20、29、30、39、40、49、50、69、70、71、72で新しい計算結果とJSON値が一致することを確認。
  - 風0で威力1.5・範囲8m、風6で威力2.0、風8で範囲9m、風72で威力7.5・範囲17mになることを確認。
  - 強化tellrawと魔王の書が威力+0.5・範囲+1mを表示し、旧値が現行functionに残っていないことを確認。
  - 魔王の書が10ページ構成を維持していることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 現在起動中のサーバーは本変更前に起動されているため、再起動後の実際の吹き飛ばし距離と性能確認表示は未確認。

### パッチノート下書き素材

ジョブ

魔王

スキル：風の魔法

- 風エレメント6ごとの爆風威力増加を+1から+0.5へ変更。
- 風エレメント8ごとの爆風範囲増加を+2mから+1mへ変更。

## 2026-08-24 — 魔王の雷魔法の最終強化対象数を変更

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、雷の魔法
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 光・風エレメント70以上で発動する雷魔法の対象: 距離を問わず敵player全員 → 距離を問わずランダムな敵player1人。
- 選ばれた1人への落雷と暗闇3秒は維持。
- 対象数に応じた光・風エレメント獲得は、変更後の対象数に合わせて最大各1となる。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 雷魔法の最終強化を全体攻撃からランダム単体攻撃へ変更する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/thunder/cast.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/thunder.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/check_pairs.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - scoreboard: `MKLight`、`MKWind`、`MKThunderN`、`MKCount`、`MKCalc`
  - fake player: `#thunder_targets`、`#element_gain`
  - team: `Red`、`Blue`
  - selector: 敵チームの非spectator playerから`sort=random,limit=1`
  - item: `魔王の書`
- データパック外の変更: なし
- command block、world NBT、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 光・風70以上の青・赤両チーム分岐が、敵チームから`sort=random,limit=1`で1人だけ選ぶことを確認。
  - 光または風が70未満の場合は、既存の検知範囲内全員を対象にする処理を維持していることを確認。
  - 対象処理が1回だけ呼ばれるため、`#thunder_targets`と光・風獲得数が0または1になることを確認。
  - 到達tellraw、性能確認表示、魔王の書がランダムな敵1人へ同期されていることを確認。
  - 魔王の書が10ページ構成を維持していることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 複数の敵playerがいる実戦で、発動ごとにランダムな1人だけへ落雷・暗闇・エレメント獲得が適用されることは未確認。

### パッチノート下書き素材

ジョブ

魔王

スキル：雷の魔法

- 光・風エレメント70以上の対象を、敵player全員から距離を問わないランダムな敵player1人へ変更。

## 2026-08-24 — ショップをスコア通貨とコンソール購入へ移行

- 状態: 実装済み
- パッチ区分: システム
- 対象: ショップ、コインゲート、ショップ商品
- 公開時の重要度: 大規模

### プレイヤー向け変更内容

- ショップ通貨を物理ダイヤモンドから、プレイヤーごとの`ShopCoin`スコアへ変更。
- コインはアイテムとして落とせないため、他プレイヤーへの譲渡は不可。
- コインゲートの回収報酬を、ダイヤモンド1個からコイン1へ変更。
- 試合中、専用アイテム「ショップコンソール」の右クリック、または`/trigger ShopOpen`で、場所を問わずショップを開けるよう変更。
- ショップ画面に所持コイン、共通商品、現在ステージ限定商品を表示し、チャット上の`[購入]`から購入できるよう変更。
- 購入時はコイン残高と現在ステージを再検査し、古いチャットに残った別ステージ商品は購入できない。
- インベントリ満杯時の商品は、`give`コマンドの標準挙動により足元へドロップする。
- 試合中に死亡してもコイン残高と購入品を維持し、試合終了・強制終了・次試合開始時に残高と入力状態をリセットする。
- バインド・闘技場の開始時コインと職業別ボーナスは、既存のステージ別配布数を維持。ステージ3～7には開始時コインを配布しない。
- 村人とのダイヤモンド取引を停止し、読込済みの旧ショップ地点にいる商人を除去するよう変更。
- `Sjpジョブ情報.xlsx`のshopシートにある共通4商品・ステージ限定20商品の計24商品を登録。
- 魔力瓶の回復量を、共通対象+100、雷神+10、エルフは共通処理と重複せず合計+300となるよう整理。

### 理由・背景

- 根拠区分: ユーザー確認済み
- ユーザー指定により、「ダイヤモンド獲得＋村人取引」を「譲渡不能なスコア通貨獲得＋専用コンソール購入」へ移行した。
- 商品・価格・個数は、今回の初期実装に限り`Sjpジョブ情報.xlsx`のshopシートを正本として使用し、実装後に個別編集する方針を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/`配下の48 function（新規）
  - `datapacks/pvp/data/main/function/mode/shop/bind/honey.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/mode/shop/diamond/dia.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/capture/red.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/capture/mid.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/capture/blue.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/bind/dia.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/semai/dia.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/ez_shop_setting.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/syounin.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/senzyouhe.mcfunction`
  - `datapacks/pvp/data/main/function/finish/finish.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/item/magic_bottle.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/elf/elf_mp_charge.mcfunction`
- 関連要素:
  - 新規scoreboard: `ShopCoin`、`ShopOpen`、`ShopBuy`、`ShopUse`、`BlinkUse`、`ShopTmp`
  - 既存scoreboard: `ShopSetting`、`StageSetting`、`ShopGateCD`、`diamond`、`honey`、`MPcharge`
  - storage: `main:shop_console`、`main:stage_start`
  - 専用アイテム: `minecraft:carrot_on_a_stick`＋`minecraft:custom_data~{shop_console:1b}`
  - 右クリック検知: `ShopUse=minecraft.used:minecraft.carrot_on_a_stick`、`BlinkUse=minecraft.used:minecraft.warped_fungus_on_a_stick`
  - 商品ID: 1～24。共通は1～4、立体交差5～6、バインド7～8、闘技場9～10、ちゅらうみ11～13、高層ビル14～16、デカライン17～19、SJP城20～24。
  - shopシートに効果量がない「ジャンプブーツ」は、推測で数値効果を追加せず名前付き革ブーツとして登録。
  - 特殊処理: 発光蜜、重力の魔石、ブリンク、天翔の剣、暗視ゴーグル。
  - 初回移行時のみ、オンラインプレイヤーが所持している物理ダイヤモンドを同数の`ShopCoin`へ変換する。
  - 旧ショップ村人は無差別に全村人を削除せず、`KousanoShop`、`SemainoShop`、`BindnoShop`のArmor Standから2ブロック以内だけを対象にする。
- データパック外の変更: なし
- 読み取り確認したワールド側依存:
  - `(-10028, 3, 5009)`: `ShopSetting=1`で`main:mode/shop/diamond/dia`を継続実行するコマンドブロック。コンソールtickの入口として既存経路を維持。
  - `(2, -1, 41)`: `ShopSetting=1`で`main:mode/shop/bind/honey`を実行するコマンドブロック。欠落していたfunctionを追加。
  - `(10020, 316, 10017)`: `main:pvp/item/item`を実行するコマンドブロック。既存の魔力瓶検知を維持。
  - `scoreboard.dat`で`honey=minecraft.used:minecraft.honey_bottle`、`MPcharge=minecraft.used:minecraft.experience_bottle`を確認。
  - 各ステージのショップ用Armor Stand、既存取引村人、コインゲートArmor Standを読み取り確認。world NBTは書き換えていない。

### 検証

- 静的確認:
  - console配下48 function、商品付与24 function、UIの商品呼び出し24件、購入ディスパッチ24件を確認。
  - shopシート24行の商品名・価格・個数と、UIおよび商品付与数が一致することを確認。
  - ステージ商品IDが、バインド7～8、闘技場9～10、ちゅらうみ11～13、立体交差5～6、高層ビル14～16、デカライン17～19、SJP城20～24に限定されることを確認。
  - 変更対象86 functionの静的function参照先がすべて存在することを確認。
  - 変更対象86 functionの非コメント行がコマンドとして始まり、引用符と括弧が行単位で閉じていることを確認。
  - ショップ配下の旧村人summon、物理ダイヤモンドgive、ダイヤモンドを要求する村人取引が各0件であることを確認。
  - コインゲート3種類がそれぞれ`ShopCoin +1`になっていることを確認。
  - 残高不足時は失敗表示後に明示的な`return 0`で付与・減算へ進まないことを確認。
  - 試合開始時と終了時の両方から`reset_match`を呼び、死亡処理からは残高をリセットしないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`で全functionと6 objectiveが正常に読み込まれることは未確認。
  - 専用アイテム右クリック、`/trigger ShopOpen`、24商品のクリック購入、残高不足、別ステージ商品の拒否は実機未確認。
  - 商品のitem component、attribute、満杯時ドロップ、および発光蜜・重力・ブリンク・浮遊・暗視の実際の挙動は未確認。
  - 保存済みの旧ショップ村人が、各チャンク読込時にショップ地点だけから除去されることは未確認。
  - 専用リソースパックが提供されていないため、ショップコンソールは現時点ではニンジン付きの棒の見た目になる。custom modelとの対応は未確認。

### パッチノート下書き素材

システム

ショップ

- ショップ通貨を、譲渡不能なプレイヤー個別のコインへ変更。
- 専用アイテムまたは`/trigger ShopOpen`から、試合中どこでもショップを開けるよう変更。
- 村人取引を廃止し、共通商品とステージ限定商品をチャット上のショップコンソールから購入する方式へ変更。
- コインと購入状態は死亡後も維持し、試合終了時にリセットするよう変更。

## 2026-08-24 — 魔王の水魔法を大型水壁と回復へ変更

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、水の魔法
- 公開時の重要度: 大規模

### プレイヤー向け変更内容

- 水20: 水壁を3×3から5×5へ拡大し、発動時に体力を8回復するよう変更。
- 水40: 水壁を7×7へ拡大。
- 水70: 水壁を9×9へ拡大し、発動時の回復量を8から16へ強化。
- 水6ごとの持続時間+1秒、水8ごとの消費MP-30（下限100）、水30のCT10、水50のCT5は維持。
- 旧水20の周囲8mへの鈍足IIと、旧水70の敵entityへの鈍足を削除。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 水エレメントの節目強化を、敵への鈍足から水壁サイズと自己回復へ変更する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/water/calculate.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/water/cast.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/water/wall_3x3.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/water/extend_5x5.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/water/extend_7x7.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/water/extend_9x9.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/info/water.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/water.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - scoreboard: `MKWater`、`MKDuration`、`MKRange`、`MKPower`、`MKCount`、`MKCast`、`MKCost`
  - entity/tag: `minecraft:marker`、`MKWaterWall`、`MKNew`、`MTentity`
  - team: 旧鈍足処理で使用していた`Red`、`Blue`の対象分岐を水魔法から削除。
  - item: `魔王の書`
  - 水壁は既存の前方2mに固定された縦面を維持し、足元を下端として上方向へ拡張する。
  - 3×3の9 Markerへ外周を16、24、32 Markerずつ追加し、5×5=25、7×7=49、9×9=81 Markerを構成する。
  - 各Markerは既存の`wall_tick`と`projectile_hit`を利用し、対応する飛び道具を消した回数だけ水エレメントを獲得する。
- データパック外の変更: なし
- command block、world NBT、既存entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 3×3、5×5、7×7、9×9でMarker座標が9、25、49、81個になり、81座標すべてに重複がないことを確認。
  - 水0、5、6、8、19、20、29、30、39、40、49、50、69、70、72で、持続時間、壁サイズ、回復量、MP、CTが仕様どおりになることを確認。
  - 水20で5×5・回復8、水40で7×7・回復8、水70で9×9・回復16になることを確認。
  - 水魔法のcast処理に旧鈍足effectが残っていないことを確認。
  - 新規functionの参照先がすべて存在することを確認。
  - 性能確認、到達tellraw、魔王の書が新仕様へ同期され、魔王の書が10ページ構成を維持していることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 5×5、7×7、9×9の粒子表示と飛び道具消去範囲、回復量、持続時間は実機未確認。
  - 水70では最大81 Markerが持続時間中毎tick飛び道具を検査するため、複数人が連続発動した場合のサーバー負荷は未確認。

### パッチノート下書き素材

ジョブ

魔王

スキル：水の魔法

- 水20で水壁を5×5へ拡大し、体力を8回復するよう変更。
- 水40で水壁を7×7へ拡大。
- 水70で水壁を9×9へ拡大し、回復量を16へ強化。
- 旧鈍足効果を削除。

## 2026-08-24 — 人数不足デバッグのピック・開始準備を高速化

- 状態: 実装済み
- パッチ区分: システム
- 対象: ピックフェーズ、ステージ開始準備、デバッグモード
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- 人数不足デバッグでは、ファーストピックだけをプレイヤーが選択し、それ以外の赤・青両チームのピックを即時完了するよう変更。
- 非ファーストピック枠に実在プレイヤーがいる場合は、使用可能なジョブを即時ランダム付与するよう変更。
- 欠員となっているピック枠は選択済み扱いとして補完し、待ち時間を発生させないよう変更。
- ピック終了後の両チーム準備確認を省略し、ステージ1～7の既存カウントダウンへ自動移行するよう変更。
- 通常の2vs2・3vs3では、従来どおり全ピックと両チームの準備確認を行う。
- BANとステージ選択、ファーストピックの入力待ちは、デバッグモードでも変更なし。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 人数不足でピックシステムとステージをデバッグする際、操作対象ではないピック枠と開始準備の待ち時間をなくす指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/pick_a_one.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/pick_a_two.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/pick_b_one.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/pick_b_two.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/debug/skip_pick.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/job_selection/pick/timeout/random_one.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/finish.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/senzyouhe.mcfunction`
  - `datapacks/pvp/data/main/function/stage/common_start/begin.mcfunction`
- 関連要素:
  - scoreboard: `PickCtrl`の`#debug`、`#action`、`#done`、`#need`、`#timer`
  - storage: `main:stage_start`の一時値`pick_debug`
  - tag: `PickFirst`、`PickAllowed`、`PickSelected`、`StageStartParticipant`
  - デバッグ用の非ファーストピックは既存のランダム付与処理を再利用し、2人枠に実在プレイヤーが1人だけいる場合も同じtick内に残り欠員を補完する。
  - `pick_debug`は`pick/reset`より前に保存し、`senzyouhe`でステージ開始処理へ渡した後に削除する。
  - ステージ1・2は`stage_start`・`stage_start2`、ステージ3～7は`common_start/countdown/begin`へ移行する。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更していない。

### 検証

- 静的確認:
  - デバッグスキップが`pick_a_one`、`pick_a_two`、`pick_b_one`、`pick_b_two`の4種類だけに接続されていることを確認。
  - `pick_a_first`にスキップ処理がなく、ファーストピックが手動のままであることを確認。
  - 通常モードではスキップfunctionが`#debug=1`の条件を満たさず終了することを確認。
  - 実在する非ファーストピック対象へのランダム付与と、存在しない残り枠の補完が同じtick内に完了する構造を確認。
  - `#debug`のリセット前に一時storageへ状態を保存し、ステージ開始処理後に削除する順序を確認。
  - ステージ1～7すべてにデバッグ時の準備省略経路があることを確認。
  - 変更したfunction内の参照先が存在すること、およびデータパック内JSONの構文を確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 人数不足の各構成で、非ファーストピックのランダム付与と全ピック順の即時進行が実際に完了することは未確認。
  - BANありルールでBAN入力後、非ファーストピックだけが即時進行することは未確認。
  - ステージ1～7で準備確認を省略した後、既存カウントダウンと試合開始が正常に実行されることは未確認。

### パッチノート下書き素材

システム

デバッグモード

- 人数不足デバッグでは、ファーストピック以外のジョブを自動決定し、ステージ開始前の準備確認を省略するよう変更。

## 2026-08-24 — 魔王の炎魔法の鈍足を弱体化

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、炎の魔法
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- 火・風エレメントが両方40以上のとき、炎の魔法が与える移動速度低下をXからIへ変更。
- 効果時間は従来どおり3秒。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 炎の魔法の火・風40到達時効果を弱体化する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/flame/target.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/check_pairs.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - scoreboard: `MKFire`、`MKWind`、`MKCalc`の`#flame_slow`
  - effect: `minecraft:slowness`のamplifierを9から0へ変更。
  - 火・風40到達時のtellrawと、アイテム`魔王の書`の炎魔法ページを新仕様へ同期。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更していない。

### 検証

- 静的確認:
  - 炎魔法の対象処理が移動速度低下Iを3秒付与することを確認。
  - 火・風40到達時のtellrawが移動速度低下Iの表記になっていることを確認。
  - 魔王の書が`両40 鈍足I3秒`の表記になり、10ページ構成とJSON構文を維持していることを確認。
  - 氷魔法の移動速度低下Xには変更がないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際の戦闘中に火・風40以上で炎魔法を命中させた際の効果レベルと表示は実機未確認。

### パッチノート下書き素材

ジョブ

魔王

スキル：炎の魔法

- 火・風40以上で与える移動速度低下をXからIへ弱体化。

## 2026-08-24 — ショップ購入triggerの無効化不具合を修正

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: ショップコンソール、`ShopOpen`、`ShopBuy`
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- ショップの商品をクリックした際、所持コインが足りていても「まだオブジェクトをトリガーできません」と表示され、購入できない不具合を修正。
- ショップコンソールのアイテム説明とショップ画面から、予備入口`/trigger ShopOpen`の案内を削除。
- 予備入口の機能自体は、画面に表示しない状態で維持。

### 理由・背景

- 根拠区分: 実装確認済み
- 毎tick、`ShopOpen`と`ShopBuy`を有効化した直後に全プレイヤー分を無条件でresetしていたため、プレイヤーがクリックする時点ではtrigger objectiveが無効になっていた。
- このエラーは所持コイン判定より前にMinecraft本体が出しており、購入処理には到達していなかった。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/active.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/ensure_item.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/ui/open.mcfunction`
- 関連要素:
  - scoreboard: `ShopOpen`、`ShopBuy`
  - 使用済みのtriggerだけを処理後にresetし、未使用のプレイヤーは有効なscore 0の状態を維持するよう変更。
  - ショップ無効時と試合リセット時の全員resetは、triggerを無効化する目的のため従来どおり維持。
  - item custom data: `shop_console:1b`
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更していない。

### 検証

- 静的確認:
  - 試合中はRed・Blue両チームへ`ShopOpen`と`ShopBuy`を有効化する処理が残っていることを確認。
  - `ShopOpen=1..`と`ShopBuy=1..`の使用者だけを、処理後にresetすることを確認。
  - ショップ無効時と試合リセット時には、全プレイヤーのtriggerを無効化する処理が残っていることを確認。
  - ショップコンソール配下に`予備入口`および表示用の`/trigger ShopOpen`が残っていないことを確認。
  - mcfunctionの括弧・引用符の静的検証を実施し、86ファイルで問題がないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - デバッグモード中に商品をクリックし、コイン消費と商品付与が一度だけ行われることは実機未確認。
  - ショップコンソールの右クリックと、非表示で残した`/trigger ShopOpen`の双方で画面を開けることは実機未確認。

### パッチノート下書き素材

システム

ショップ

- ショップの商品をクリックしても購入triggerが実行できない不具合を修正。
- ショップコンソールから予備入口の案内表示を削除。

## 2026-08-24 — SJP城限定ショップ商品を調整

- 状態: 実装済み
- パッチ区分: システム
- 対象: SJP城限定ショップ、シュノーケル、足ヒレ、天翔の剣、ウォーデンのスポーンエッグ
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- シュノーケルの価格を5コインから1コインへ変更。
- 足ヒレの価格を5コインから1コインへ変更。
- 天翔の剣を右手に持っている間に付与される浮遊をIからVIIへ変更。
- ウォーデンのスポーンエッグから召喚される個体の名前を`ウォーデン`に変更。
- ウォーデンのスポーンエッグ購入時、購入者と同じRedまたはBlueチームに所属するウォーデンを召喚する卵を付与するよう変更。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 各商品の価格、効果レベル、召喚されるウォーデンの名前とチームについて、ユーザー指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/ui/stage/7.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/purchase/dispatch.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/special/tick.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/product/give/20.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/product/give/21.mcfunction`
- 関連要素:
  - scoreboard: `ShopCoin`、`ShopBuy`、`StageSetting`
  - effect: `minecraft:levitation`のamplifierを0から6へ変更し、浮遊IからVIIへ調整。
  - item: `minecraft:warden_spawn_egg`の`entity_data`へ`CustomName`、`CustomNameVisible`、`Team`、`MTentity`タグを設定。
  - item custom data: `shop_sky_sword:1b`
  - entity: 召喚ウォーデンを購入者のRedまたはBlueチームに所属させ、試合終了時の`kill @e[tag=MTentity]`対象に追加。
  - ショップ画面の価格・説明、実際の購入価格、天翔の剣のloreを新仕様へ同期。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、座標は変更していない。

### 検証

- 静的確認:
  - シュノーケルと足ヒレについて、ショップ表示価格と購入時消費額がともに1コインであることを確認。
  - 両商品の旧価格5コインの参照がショップコンソール配下に残っていないことを確認。
  - 天翔の剣の効果処理が浮遊VIIに相当するamplifier 6を付与し、ショップ説明とアイテムloreも`浮遊VII`であることを確認。
  - Red用とBlue用のウォーデンスポーンエッグに、名前`ウォーデン`と対応する`Team`が設定されていることを確認。
  - 召喚ウォーデンに`MTentity`タグが設定され、既存の試合終了処理で削除対象になることを確認。
  - mcfunctionの括弧・引用符の静的検証を実施し、86ファイルで問題がないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際の購入時に1コインだけ消費されることは実機未確認。
  - 天翔の剣を右手に持った際の浮遊VIIの付与と解除タイミングは実機未確認。
  - スポーンエッグ使用時のウォーデンの表示名、チーム所属、味方への挙動、試合終了時の削除は実機未確認。

### パッチノート下書き素材

システム

SJP城限定ショップ

- シュノーケルの価格: 5コイン → 1コイン
- 足ヒレの価格: 5コイン → 1コイン
- 天翔の剣の浮遊効果: 浮遊I → 浮遊VII
- ウォーデンのスポーンエッグから召喚される個体の名前を`ウォーデン`に変更し、購入者と同じチームへ所属するよう変更。

## 2026-08-24 — 魔王の氷魔法の鈍足時間を延長

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、氷の魔法
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- 水・土エレメントが両方20以上のとき、氷の魔法が与える移動速度低下Xの効果時間を3秒から5秒へ変更。
- 移動速度低下のレベルXは変更なし。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 氷の魔法の水・土20到達時効果を5秒間にする指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/ice/target.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/check_pairs.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - scoreboard: `MKWater`、`MKEarth`、`MKCalc`の`#ice_slow`
  - effect: `minecraft:slowness`のdurationを3から5へ変更し、amplifier 9は維持。
  - 水・土20到達時のtellrawと、アイテム`魔王の書`の氷魔法ページを新仕様へ同期。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 氷魔法の対象処理が移動速度低下Xを5秒付与することを確認。
  - 水・土20到達時のtellrawが移動速度低下X・5秒の表記になっていることを確認。
  - 魔王の書が`両20 鈍足X5秒`の表記になり、10ページ構成とJSON構文を維持していることを確認。
  - 炎魔法の移動速度低下I・3秒には変更がないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際の戦闘中に水・土20以上で氷魔法を命中させた際の効果時間は実機未確認。

### パッチノート下書き素材

ジョブ

魔王

スキル：氷の魔法

- 水・土20以上で与える移動速度低下Xの効果時間: 3秒 → 5秒

## 2026-08-24 — ウォーデンスポーンエッグをアドベンチャーモードで使用可能に修正

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: SJP城限定ショップ、ウォーデンのスポーンエッグ
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- ウォーデンのスポーンエッグを右クリックしても召喚できないバグを修正。
- 試合中のアドベンチャーモードでも、ブロックを右クリックしてウォーデンを召喚できるよう変更。

### 理由・背景

- 根拠区分: 実装から確認
- 試合開始処理が参加者をアドベンチャーモードへ変更している一方、スポーンエッグにアドベンチャーモード用の`minecraft:can_place_on`コンポーネントが設定されていなかった。
- 保存済みプレイヤーNBTでも`playerGameType`が2で、所持していたウォーデンのスポーンエッグに`minecraft:can_place_on`がないことを確認した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/product/give/20.mcfunction`
- 関連要素:
  - item: `minecraft:warden_spawn_egg`
  - item component: `minecraft:can_place_on={}`を追加し、全ブロック上で使用可能に変更。
  - item component: `minecraft:tooltip_display`で`minecraft:can_place_on`の内部表示を非表示化。
  - item custom data: `shop_warden_egg:1b`
  - 既存の`CustomName`、`Team`、`MTentity`設定は維持。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更していない。
- 調査のみ:
  - `datapacks/pvp/data/main/function/start/start.mcfunction`の`gamemode adventure @a`を確認。
  - `playerdata/e5f93a1f-65a0-4419-ba71-c4fa0983d3f8.dat`を読み取り、保存時のゲームモードと旧スポーンエッグのコンポーネントを確認。NBTは変更していない。
  - `../logs/latest.log`で、直近のreload時に当該商品付与functionの読み込みエラーがないことを確認。ログは変更していない。

### 検証

- 静的確認:
  - Red用とBlue用の両方へ`can_place_on={}`が設定されていることを確認。
  - 名前`ウォーデン`、対応する`Team`、`MTentity`タグが両方に残っていることを確認。
  - mcfunctionの括弧・引用符の静的検証を実施し、86ファイルで問題がないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後に新しく購入したスポーンエッグで、アドベンチャーモード中にウォーデンを召喚できることは実機未確認。
  - 修正前に付与済みのスポーンエッグはコンポーネントが自動更新されないため、新しく購入し直す必要がある。

### パッチノート下書き素材

システム

SJP城限定ショップ

- ウォーデンのスポーンエッグをアドベンチャーモード中に使用できないバグを修正。

## 2026-08-24 — 天翔の剣に落下ダメージ無効を追加

- 状態: 実装済み
- パッチ区分: システム
- 対象: SJP城限定ショップ、天翔の剣
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- (新) 天翔の剣を右手に持っている間、落下ダメージを無効化。
- 従来の浮遊VII付与は維持。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 天翔の剣を持っている間は落下ダメージを無効化する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/special/tick.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/inactive.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/reset_match.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/ui/stage/7.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/product/give/21.mcfunction`
- 関連要素:
  - attribute: `minecraft:fall_damage_multiplier`
  - modifier: `main:shop_sky_sword_fall`、値-1、operation `add_multiplied_total`
  - tag: `ShopSkyFall`
  - item custom data: `shop_sky_sword:1b`
  - 天翔の剣を右手に持った時だけ最終落下ダメージ倍率を0倍にし、持ち替え時にmodifierとtagを除去。
  - ショップ停止時と試合リセット時にもmodifierとtagを全プレイヤーから除去。
  - ショップ画面の説明とアイテムloreへ落下ダメージ無効を追記。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - `shop_sky_sword:1b`を持つプレイヤーへmodifierを1回だけ追加することを確認。
  - 持ち替え時、ショップ停止時、試合リセット時の3経路にmodifier除去処理があることを確認。
  - `add_multiplied_total`の値-1により、他装備の補正計算後の落下ダメージ倍率を0倍にする構造を確認。
  - 天翔の剣へattribute componentを直接設定していないため、金の剣本来の攻撃属性を上書きしないことを確認。
  - ショップ説明とアイテムloreが新仕様に同期していることを確認。
  - mcfunctionの括弧・引用符の静的検証を実施し、86ファイルで問題がないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 天翔の剣を持った状態で着地した際に落下ダメージが0になることは実機未確認。
  - 着地直前に剣へ持ち替えた場合と、着地直前に剣から持ち替えた場合のtick境界の挙動は実機未確認。

### パッチノート下書き素材

システム

SJP城限定ショップ

天翔の剣

- (新) 右手に持っている間、落下ダメージを無効化。

## 2026-08-24 — バインド限定ショップ商品を調整

- 状態: 実装済み
- パッチ区分: システム
- 対象: バインド限定ショップ、発光蜜、ジャンプブーツ
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 発光蜜が敵チームへ付与する発光の効果時間を3秒から60秒へ変更。
- (新) ジャンプブーツを履いている間、跳躍力上昇IIを付与。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 発光蜜の効果時間とジャンプブーツの装備中効果について、ユーザー指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/bind/honey.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/product/give/07.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/product/give/08.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/ui/stage/1.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/special/tick.mcfunction`
- 関連要素:
  - scoreboard: `honey`（`minecraft.used:minecraft.honey_bottle`）
  - effect: `minecraft:glowing`のdurationを3秒から60秒へ変更。amplifier 0は維持。
  - effect: ジャンプブーツ装備中に`minecraft:jump_boost`をduration 1秒、amplifier 1で毎tick更新。
  - item custom data: `shop_item:'glowing_honey'`、`shop_jump_boots:1b`
  - ショップ画面の説明と両商品のloreを新仕様へ同期。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更していない。
- ワールド側依存の読み取り確認:
  - バインドの座標`2 -1 41`にある常時実行コマンドブロックが、ショップ有効時に`main:mode/shop/bind/honey`を呼び出すことを確認。
  - `data/scoreboard.dat`に`honey` objectiveが存在し、criteriaが`minecraft.used:minecraft.honey_bottle`であることを確認。

### 検証

- 静的確認:
  - Red使用時はBlue、Blue使用時はRedへ発光を60秒付与することを確認。
  - バインドの発光蜜について、旧3秒の処理・UI・lore表記が残っていないことを確認。
  - ジャンプブーツが足装備スロットにあり、`shop_jump_boots:1b`を持つ場合だけ跳躍力上昇IIを付与することを確認。
  - ジャンプブーツを脱いだ際は効果を強制clearせず、最大1秒で自然終了するため、他の職業由来の跳躍力上昇を削除しない構造を確認。
  - mcfunctionの括弧・引用符の静的検証を実施し、86ファイルで問題がないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 発光蜜使用時の敵チームへの60秒発光と、使用者の`honey` scoreリセットは実機未確認。
  - ジャンプブーツ装備時の跳躍力上昇II付与と、脱いだ後の終了タイミングは実機未確認。
  - 修正前に付与済みのジャンプブーツには`shop_jump_boots:1b`がないため、新しく購入したブーツが対象。

### パッチノート下書き素材

システム

バインド限定ショップ

- 発光蜜の発光効果時間: 3秒 → 60秒
- (新) ジャンプブーツを履いている間、跳躍力上昇IIを付与。

## 2026-08-24 — 購入成功後のショップ再表示を廃止

- 状態: 実装済み
- パッチ区分: システム
- 対象: ショップコンソール、購入成功メッセージ
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- 商品の購入成功後、ショップコンソールの商品一覧を自動で再表示しないよう変更。
- 購入成功時のチャット表示を、購入した商品名と購入後の所持コインだけに変更。
- 購入成功音は従来どおり維持。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 購入後のコンソール再展開をなくし、購入結果と現在残高だけを表示する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/purchase/buy.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/purchase/success.mcfunction`
- 関連要素:
  - scoreboard: `ShopCoin`
  - tellraw: `購入: <商品名>  所持コイン: <購入後残高>`
  - 成功処理から`main:mode/shop/console/ui/open`の呼び出しを削除。
  - 成功メッセージから購入価格の`-<価格>コイン`表示を削除。
  - 残高不足時と無効商品選択時のショップ再表示は変更していない。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 24商品の購入処理がすべて共通の`purchase/success`を通ることを確認。
  - 成功処理に`ui/open`呼び出しと価格表示が残っていないことを確認。
  - 成功メッセージが商品名と`ShopCoin`の現在値だけを表示することを確認。
  - 残高不足処理と無効商品処理には従来の`ui/open`呼び出しが残っていることを確認。
  - mcfunctionの括弧・引用符の静的検証を実施し、86ファイルで問題がないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際の購入後に商品一覧が再表示されず、商品名と購入後残高だけが表示されることは実機未確認。

### パッチノート下書き素材

システム

ショップコンソール

- 商品購入後のショップ自動再表示を廃止し、購入商品名と現在の所持コインだけを表示するよう変更。

## 2026-08-29 — 爆弾魔の「自爆用爆弾」を1.21.5で復旧

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: 爆弾魔、持ち物「自爆用爆弾」
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: 爆弾魔が「自爆用爆弾」を発動しても通常の不死のトーテムとしてしか機能せず、爆発が発生しなかった問題を修正。
- 「自爆用爆弾」の発動者を中心に`ExplosionRadius:6b`の爆発を発生させ、発動者自身と周囲を巻き込むよう変更。
- 爆弾魔が持つ通常の不死のトーテムや、他ジョブが使うトーテムでは自爆を発動しない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 「自爆用爆弾」という名前のトーテムは、トーテム発動時に周囲を巻き込みながら自爆するスキルを前提として爆弾魔へ持たせていた。旧バージョン向け実装が現行環境で動かず、ただのトーテムになっていたため、本来の役割を復旧した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/advancement/used_totem.json`（新規。旧`advancements`配下から現行の単数形へ移行）
  - `datapacks/pvp/data/main/advancements/used_totem.json`（削除）
  - `datapacks/pvp/data/main/function/used_totem.mcfunction`
- 関連要素:
  - advancement trigger: `minecraft:used_totem`
  - item: `minecraft:totem_of_undying`、custom name `自爆用爆弾`
  - player tag: `Bomber`
  - entity: 即時点火した`minecraft:creeper`、`Fuse:0s`、`ExplosionRadius:6b`、tag `MTentity`
  - 旧処理の全爆弾魔対象`@a[tag=Bomber]`を廃止し、進捗を達成した`@s[tag=Bomber]`本人だけを爆発の中心にするよう修正。
  - 発動後に`main:used_totem`をrevokeし、2個目以降の「自爆用爆弾」でも再発動できる構造を維持。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、座標は変更していない。今回の発動入口はadvancement triggerで、command blockには依存しない。関連するworld NBTの読み取り調査は未実施。

### 検証

- 静的確認:
  - Minecraft 1.21.5のvanilla `minecraft:adventure/totem_of_undying`を参照し、`minecraft:used_totem`の現行item条件形式と単数形`advancement`ディレクトリを確認。
  - 職業選択時の付与名`自爆用爆弾`と、進捗の`minecraft:custom_name`条件が一致することを確認。
  - 爆発処理が発動者本人の`Bomber` tagを確認し、本人の座標で1体だけ召喚することを確認。
  - `MTentity`の一括削除は試合終了処理だけであり、通常の発動直後に即時点火クリーパーを消す常時処理がないことを確認。
- Minecraft実機確認: 実施済み（稼働中のMinecraft 1.21.5サーバーで`reload`を実行。登録済みadvancementが1484件から1485件へ増え、今回のadvancementと`main:used_totem`に読み込みエラーがないことを確認）
- 残る懸念・未確認事項:
  - 実際に「自爆用爆弾」を発動し、発動者自身と周囲へ爆発が当たることはプレイテスト未実施。
  - `reload`時には今回と無関係な既存functionの読み込みエラーが残っているが、今回の変更箇所に関するエラーは出ていない。

### パッチノート下書き素材

ジョブ

爆弾魔

持ち物「自爆用爆弾」

- バグの修正: トーテム発動時に爆発が起きなかった問題を修正。
- 発動者を中心に`ExplosionRadius:6b`の爆発を発生させ、発動者自身と周囲を巻き込む本来の自爆効果を復旧。

## 2026-08-29 — 「爆発の魔法」Ⅰ～Ⅲのクリーパー名を1.21.5形式へ更新

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: 魔法使い系統、「爆発の魔法Ⅰ」「爆発の魔法Ⅱ」「爆発の魔法Ⅲ」
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: 各種「爆発の魔法」が召喚するクリーパーのカスタムネームを、Minecraft 1.21.5で有効な形式へ更新。
- 爆発威力、召喚位置、発動条件、消費MP、CT、CD、爆発の呪いの付与処理は変更していない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 「爆発の魔法」が召喚するクリーパーのカスタムネームが旧バージョン向けの仕様になっていたため、1.21.5向けの直接SNBTテキストコンポーネントへ揃える指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_explosion1_sub.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_explosion2_sub.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/wizard/wizard_jum/wizard_explosion3.mcfunction`
- 関連要素:
  - entity: `minecraft:creeper`
  - custom name: `爆発の魔法Ⅰ`、`爆発の魔法Ⅱ`、`爆発の魔法Ⅲ`
  - 旧形式: `CustomName:'{"text":"...","color":"gold"}'`
  - 新形式: `CustomName:{text:"...",color:"gold"}`
  - tag: `WizardExplosion1`、`WizardExplosion2`、`WizardExplosion3`、`MTentity`
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 「爆発の魔法」の名前を持つクリーパー召喚処理がⅠ・Ⅱ・Ⅲの3箇所であることを確認。
  - 3箇所すべてが直接SNBTテキストコンポーネント形式になり、旧JSON文字列形式が残っていないことを確認。
  - `CustomName`以外の召喚NBTと周辺の発動・呪い処理に変更がないことを確認。
- Minecraft実機確認: 実施済み（稼働中のMinecraft 1.21.5サーバーで`reload`を実行し、対象3functionに読み込みエラーがないことを確認）
- 残る懸念・未確認事項:
  - 各魔法を実際に発動し、召喚直後のクリーパーへカスタムネームが設定されることはプレイテスト未実施。
  - `reload`時には今回と無関係な既存functionの読み込みエラーが残っている。

### パッチノート下書き素材

ジョブ

魔法使い系統

スキル「爆発の魔法Ⅰ」「爆発の魔法Ⅱ」「爆発の魔法Ⅲ」

- バグの修正: 召喚するクリーパーのカスタムネームをMinecraft 1.21.5向けの形式へ更新。

## 2026-09-02 — 羊飼いが召喚する羊の体力を14へ変更

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 羊飼い、全色の召喚羊
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 羊飼いが召喚する全14種類の羊の体力: 20（ハート10個） → 14（ハート7個）
- 赤チーム・青チームの召喚処理へ同じ変更を適用。
- 各色のオーラ効果、移動速度、大きさ、追跡範囲、召喚上限は変更していない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 羊飼いが召喚する羊の体力を、色にかかわらず一律で20から14へ下げる指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_aqua_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_black_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_blue_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_dark_aqua_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_dark_gray_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_dark_green_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_dark_purple_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_gold_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_green_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_light_purple_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_pink_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_red_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_white_sheep.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/shepherd/color/spawn_yellow_sheep.mcfunction`
- 関連要素:
  - entity: `minecraft:sheep`
  - entity tag: `shepherd_sheep`、`new_sheep`、`MTentity`、各色識別tag
  - 召喚時の現在体力: `Health:20f` → `Health:14f`
  - 最大体力attribute: `minecraft:max_health`の`base:20` → `base:14`
  - 赤・青それぞれ14種類、合計28個の召喚コマンドを更新。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、既存entity、座標は変更・再調査していない。
- 拡張子が欠けた未登録の重複ファイル`spawn_dark_gray_sheepmcfunction`はMinecraftからfunctionとして読み込まれず、現行の指示書からも呼ばれないため変更していない。

### 検証

- 静的確認:
  - 羊飼いの指示書から呼び出される色別functionが14種類であることを確認。
  - 有効な14function内の28召喚コマンドすべてで、現在体力と最大体力が14になっていることを確認。
  - 有効な召喚処理に`Health:20f`または`minecraft:max_health base:20`が残っていないことを確認。
  - 体力以外の召喚NBTと、オーラ・召喚数管理・角笛・羊の一括削除処理には変更がないことを確認。
- Minecraft実機確認: 実施済み（稼働中のMinecraft 1.21.5サーバーで`reload`を実行し、対象の羊召喚functionに読み込みエラーがないことを確認）
- 残る懸念・未確認事項:
  - 実際に各色の羊を召喚し、体力が14になっていることはプレイテスト未実施。
  - 変更前から存在する召喚済みの羊には自動適用されず、新しく召喚した羊から適用される。
  - `reload`時には今回と無関係な既存functionの読み込みエラーが残っている。

### パッチノート下書き素材

ジョブ

羊飼い

召喚羊

- 全色の羊の体力: 20（ハート10個） → 14（ハート7個）

## 2026-09-02 — 羊飼いの攻撃力上昇を常時無効化

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 羊飼い、攻撃力上昇エフェクト
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- (新) 羊飼いは、エルフと同様に攻撃力上昇エフェクトを受けられないよう変更。
- 羊飼い自身の羊オーラ、他職の支援、ポーションなど付与元を問わず、羊飼いへ付いた`minecraft:strength`を常時解除。
- 羊飼い以外の味方が、赤・青緑・赤紫の羊から攻撃力上昇を受ける挙動は変更していない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- エルフの既存仕様を参考にし、羊飼いも常時攻撃力上昇エフェクトを受けられない職業とする指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/shepherd/shepherd.mcfunction`
- 関連要素:
  - player tag: `Shepherd`
  - effect: `minecraft:strength`
  - 既存のストレングス無効化行にコピー元の`Elf` tagが残っていたため、対象を`@a[tag=Elf]`から`@a[tag=Shepherd]`へ修正。
  - 羊オーラ処理の後に毎tick解除する既存の処理位置は維持。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - エルフの常時処理が毎tick`@a[tag=Elf]`の`minecraft:strength`を解除する構造であることを確認。
  - 羊飼いも同じ構造で、毎tick`@a[tag=Shepherd]`だけを対象に`minecraft:strength`を解除することを確認。
  - 羊のオーラによる味方全体への攻撃力上昇付与処理には変更がなく、羊飼い本人だけが後続処理で解除されることを確認。
  - 攻撃力上昇以外のエフェクトを解除しないことを確認。
- Minecraft実機確認: 実施済み（稼働中のMinecraft 1.21.5サーバーで`reload`を実行し、`main:pvp/shepherd/shepherd`に読み込みエラーがないことを確認）
- 残る懸念・未確認事項:
  - 羊飼いへ実際に攻撃力上昇を付与し、次tickで解除されることはプレイテスト未実施。
  - `reload`時には今回と無関係な既存functionの読み込みエラーが残っている。

### パッチノート下書き素材

ジョブ

羊飼い

パッシブ

- (新) エルフと同様に、攻撃力上昇エフェクトを受けられないよう変更。

## 2026-08-29 — ブリンクの商品表示個数を修正

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: 高層ビル限定ショップ、ブリンク
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- バグの修正: ブリンクのショップ表示個数を2個から3個へ修正。
- 実際に付与される個数は従来どおり3個で、ゲーム上の付与数は変更していない。

### 理由・背景

- 根拠区分: 実装から確認
- 商品付与処理は3個だったが、ショップテキストだけが2個のままになっていたため、表示を実処理へ同期した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/ui/stage/5.mcfunction`
- 関連要素:
  - 商品ID: `16`
  - ショップ表示: `amount:2` → `amount:3`
  - 付与処理`product/give/16.mcfunction`の末尾個数3は変更なし。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - ショップ表示がブリンク3個、付与処理も3個で一致することを確認。
  - ショップコンソール配下にブリンクの旧表示`amount:2`が残っていないことを確認。
  - mcfunctionの括弧・引用符の静的検証を実施し、86ファイルで問題がないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後のショップ画面で`ブリンク ×3`と表示されることは実機未確認。

### パッチノート下書き素材

システム

高層ビル限定ショップ

- バグの修正: ブリンクの表示個数を2個から3個へ修正。

## 2026-08-29 — ファントムソードの発動スロットをサブハンドへ変更

- 状態: 実装済み
- パッチ区分: システム
- 対象: 闘技場限定ショップ、ファントムソード
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- ファントムソードのステータス上昇が有効になる装備位置を、メインハンドからサブハンドへ変更。
- 攻撃力4、攻撃速度2、リーチ4.5の補正値は変更していない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- ファントムソードをサブハンド用の商品として機能させる指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/product/give/10.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/ui/stage/2.mcfunction`
- 関連要素:
  - item: `minecraft:iron_sword`
  - attribute modifier: `main:shop_phantom_damage`、`main:shop_phantom_speed`、`main:shop_phantom_reach`
  - 3 modifierのslotを`mainhand`から`offhand`へ変更。
  - ショップ画面の説明とアイテムloreへ`サブハンド装備時`を追記。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - ファントムソードの3 modifierがすべて`slot:'offhand'`であることを確認。
  - ファントムソードの商品付与処理に`slot:'mainhand'`が残っていないことを確認。
  - 各modifierのtype、amount、operation、idに変更がないことを確認。
  - ショップ画面とアイテムloreがサブハンド仕様を案内することを確認。
  - mcfunctionの括弧・引用符の静的検証を実施し、86ファイルで問題がないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - サブハンド装備時だけ3種のステータス補正が反映されることは実機未確認。
  - 修正前に付与済みのファントムソードはitem componentが自動更新されないため、新しく購入した剣が対象。

### パッチノート下書き素材

システム

闘技場限定ショップ

ファントムソード

- ステータス上昇の発動スロット: メインハンド → サブハンド
- 補正値は攻撃力4、攻撃速度2、リーチ4.5で変更なし。

## 2026-08-29 — コインゲート報酬をチーム全員へ共有

- 状態: 実装済み
- パッチ区分: システム
- 対象: コインゲート、`ShopCoin`
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- コインゲート回収時の報酬を、回収者本人だけの1コインから、回収者が所属するチーム全員への1コインずつに変更。
- 報酬を受け取った各チームメンバーへ、`チームコイン +1`と更新後の本人の所持コインをactionbar表示。

### 理由・背景

- 根拠区分: ユーザー確認済み
- コインゲートの獲得報酬を個人報酬からチーム共有報酬へ変更する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/capture/red.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/capture/mid.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/capture/blue.mcfunction`
- 関連要素:
  - scoreboard: `ShopCoin`、`diamond`、`ShopGateCD`
  - team: `Red`、`Blue`
  - 回収者がRedの場合は`@a[team=Red]`、Blueの場合は`@a[team=Blue]`へ`ShopCoin`を1加算。
  - actionbarは各受取人を実行者にして、各自の更新後`ShopCoin`を表示。
  - 回収者の進捗リセット、ゲートの150秒クールダウン、表示更新処理は変更していない。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 赤・中央・青の3スポットすべてにRed用とBlue用のチーム加算処理があることを確認。
  - 3スポットすべてに各チームメンバー向けのactionbar通知があることを確認。
  - 回収者本人だけへ`ShopCoin`を加算する旧`scoreboard players add @s ShopCoin 1`が残っていないことを確認。
  - 回収者の`diamond`リセットと各スポットの`ShopGateCD 3000`が維持されていることを確認。
  - mcfunctionの括弧・引用符の静的検証を実施し、86ファイルで問題がないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 2対2・3対3で片方のプレイヤーが回収した際、同じチームの全参加者だけへ1コインずつ付与されることは実機未確認。
  - 各メンバーのactionbarに本人の更新後残高が表示されることは実機未確認。

### パッチノート下書き素材

システム

コインゲート

- 回収報酬を、回収者本人への1コインから、回収者のチーム全員への1コインずつに変更。

## 2026-09-02 — ステージ3～7の旧開始ボタン検知を停止

- 状態: 実装済み
- パッチ区分: システム
- 対象: ちゅらうみ、立体交差、高層ビル、デカライン高架下、SJP城、ステージ開始処理
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- ステージ3～7に残っていた、赤・青チームの物理ボタンによる準備確認と旧カウントダウン開始処理を停止。
- ステージ3～7の試合開始経路を、新しい`common_start`システムによる準備確認と5秒カウントダウンに限定。
- ステージ1・2の開始ボタン処理は変更なし。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 新しいstartシステムが問題なく動作していることをユーザーが確認したため、並行して残っていた旧物理ボタン経路を停止した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/stage/stage_full.mcfunction`
- 関連要素:
  - entity tag: `AkaNoStart`、`AoNoStart`
  - block: `minecraft:stone_button`、`minecraft:oak_button`
  - scoreboard: `MainStartJuDge`の`メインスタート判断(赤)`、`メインスタート判断(青)`
  - 停止した呼び出し: `ready_red_full`、`ready_blue_full`、`cancel_red_full`、`cancel_blue_full`、`stage_start_full`
  - 正規開始経路: `main:stage/common_start`
  - `stage_full`内のテレポート等、開始処理以外の継続処理は維持。
  - 物理ボタン、旧準備表示entity、旧補助functionは削除していない。
- データパック外の変更: なし
- command block、world NBT、既存entity、座標は変更していない。region内のコマンドブロックは今回再調査できていない。

### 検証

- 静的確認:
  - `stage_full.mcfunction`から石・木ボタンのpowered判定4件がなくなったことを確認。
  - `MainStartJuDge`成立時に`stage_start_full`を呼ぶ旧開始判定がなくなったことを確認。
  - データパック内から旧full系開始補助functionへの参照がなくなったことを確認。
  - 同じfunction内の`tp1`・`tp2`関連処理が維持されていることを確認。
  - `senzyouhe`からステージ3～7の`common_start/begin`を呼ぶ正規入口が維持されていることを確認。
  - データパック内JSONの構文を確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 旧物理ボタンを押しても準備状態やカウントダウンが変化しないことは実機未確認。
  - region内コマンドブロックから旧補助functionを直接呼ぶ別経路が存在しないことは未確認。

### パッチノート下書き素材

システム

ステージ開始処理

- ちゅらうみ、立体交差、高層ビル、デカライン高架下、SJP城に残っていた旧開始ボタン処理を停止し、新しい共通startシステムへ統一。

## 2026-09-02 — デカライン高架下でシュノーケルを販売

### 概要

- 状態: 実装済み
- パッチ区分: システム
- 対象: デカライン高架下限定ショップ、シュノーケル

### プレイヤー向け変更

- デカライン高架下のショップで、シュノーケルを1コインで購入できるように変更。
- SJP城でのシュノーケル販売は維持。

### 理由・背景

- 根拠区分: ユーザー確認済み
- デカライン高架下でもシュノーケルを販売するよう、ユーザーから指定されたため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/ui/stage/6.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/purchase/dispatch.mcfunction`
- 関連要素:
  - 商品ID: `22`
  - 商品名: `シュノーケル`
  - 価格: `1 ShopCoin`
  - 対象ステージ: `StageSetting 6`（デカライン高架下）、既存の`StageSetting 7`（SJP城）
  - 商品付与処理: `main:mode/shop/console/product/give/22`
  - 購入入力: `ShopBuy`
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更していない。

### 検証

- 静的確認:
  - デカライン高架下のショップ表示に、商品ID 22のシュノーケルが価格1で追加されたことを確認。
  - `StageSetting 6`で商品ID 22の購入を有効として扱い、価格1で購入処理へ進むことを確認。
  - SJP城の既存表示・購入条件が残り、両ステージで同じ商品付与functionを使用することを確認。
  - mcfunctionの括弧・引用符の対応検査を実施し、対象を含む86ファイルで異常なし。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後、デカライン高架下でショップを開いて表示・購入・1コイン消費・シュノーケル付与が一連で成功することは実機未確認。

### パッチノート下書き素材

システム

ショップ

- デカライン高架下でもシュノーケルを1コインで販売。

## 2026-09-02 — ファントムソードのステータス補正を調整

- 状態: 実装済み
- パッチ区分: ステージ
- 対象: 闘技場限定ショップ、ファントムソード
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- ファントムソードをサブハンドに装備した際の攻撃力補正を、`+4 → +1`へ変更。
- ファントムソードをサブハンドに装備した際のリーチ補正を、`+4.5 → +3.5`へ変更。
- 攻撃速度補正`+2`と、サブハンド装備時に補正される仕様は変更なし。
- 闘技場ショップの表示を変更後の数値へ更新。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 攻撃力補正を1、リーチ補正を3.5へ変更するよう、ユーザーから指定されたため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/product/give/10.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/ui/stage/2.mcfunction`
- 関連要素:
  - 商品ID: `10`
  - item: `minecraft:iron_sword`
  - attribute modifier ID: `main:shop_phantom_damage`、`main:shop_phantom_speed`、`main:shop_phantom_reach`
  - modifier slot: `offhand`
  - ステージ条件: `StageSetting 2`（闘技場）
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更していない。

### 検証

- 静的確認:
  - 商品付与処理が攻撃力`amount:1`、攻撃速度`amount:2`、リーチ`amount:3.5`で、3項目とも`slot:'offhand'`であることを確認。
  - 闘技場ショップ表示が「攻撃力1、攻撃速度2、リーチ3.5」と一致することを確認。
  - mcfunctionの括弧・引用符の対応検査を実施し、対象を含む86ファイルで異常なし。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後に新しく購入したファントムソードをサブハンドへ装備し、各attributeが反映・解除されることは実機未確認。
  - 変更前に購入済みのファントムソードはitem componentが自動更新されないため、新しい補正にはならない。

### パッチノート下書き素材

ステージ

闘技場

ファントムソードの調整

- サブハンド装備時の攻撃力補正: `+4 → +1`
- サブハンド装備時のリーチ補正: `+4.5 → +3.5`
- 攻撃速度補正`+2`は変更なし。

## 2026-09-02 — 共通商品にチケット破壊装置を追加

- 状態: 実装済み
- パッチ区分: システム
- 対象: ショップ共通商品、チケット破壊装置
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- (新) 全ステージの共通商品として「チケット破壊装置」を15コインで販売。
- メインハンドに持って右クリックすると装置を1個消費し、使用者が赤チームなら青チーム、青チームなら赤チームのチケットを1減らす。
- 使用成功時、使用チーム・対象チーム・対象チームの残りチケットを全員へ通知し、効果音を再生。
- チケット無効モード、または相手チームのチケットが既に0以下の場合は発動せず、装置も消費しない。
- 試合終了・強制中止後は、プレイヤー所持分とドロップ状態の装置を残さない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 価格15で、使用すると相手チームのチケットを1減らす装置を共通商品として販売するよう、ユーザーから指定されたため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/ui/open.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/purchase/dispatch.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/product/give/25.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/active.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/special/ticket_device.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/special/ticket_device/red.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/special/ticket_device/blue.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/reset_match.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/inactive.mcfunction`
- 関連要素:
  - 商品ID: `25`
  - 価格: `15 ShopCoin`
  - item: `minecraft:carrot_on_a_stick`
  - custom data: `shop_ticket_device:1b`
  - 使用検知objective: `ShopUse`（`minecraft.used:minecraft.carrot_on_a_stick`）
  - チケットobjective: `ticket`
  - チケット有効判定: `チケットの数判定用 TicketValueSet`
  - 対象チーム: `Red`使用時は`青チーム ticket`、`Blue`使用時は`赤チーム ticket`
- データパック外の変更: なし
- 現在の`data/scoreboard.dat`を読み取り、`ShopUse`、`ShopBuy`、`ShopCoin`、`ticket`、`TicketValueSet`が存在することを確認。scoreboard値は変更していない。
- command block、既存entity、座標、region NBTは変更していない。今回の新商品は既存のショップtick入口から処理されるため、command blockは再調査していない。

### 検証

- 静的確認:
  - 共通商品表示に商品ID 25・価格15で追加され、購入dispatchから商品付与functionへ到達することを確認。
  - `ShopUse`とcustom dataでショップコンソールとチケット破壊装置を区別していることを確認。
  - 赤チーム使用時のみ青チーム、青チーム使用時のみ赤チームの`ticket`を1減らすことを確認。
  - 発動成功時だけ装置を1個消費し、無効モード・相手チケット0以下では消費前に終了することを確認。
  - 試合リセット処理と試合外処理の両方に装置の除去を追加したことを確認。
  - mcfunctionの括弧・引用符の対応検査を実施し、対象を含む90ファイルで異常なし。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後、購入、右クリック検知、1個消費、相手チケット減少、勝敗判定、通知・効果音の一連動作は実機未確認。
  - 同じtickで死亡によるチケット減少や両チームの装置使用が重なった場合の最終勝敗表示は実機未確認。

### パッチノート下書き素材

システム

ショップ

- (新) 共通商品「チケット破壊装置」を15コインで追加。
- 右クリックで1個消費し、相手チームのチケットを1減少。

## 2026-09-02 — 天翔の剣に左手装備効果を追加

- 状態: 実装済み
- パッチ区分: ステージ
- 対象: SJP城限定ショップ、天翔の剣
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- (新) 天翔の剣を左手に装備している間、浮遊効果を即時解除し、落下ダメージを無効化。
- 右手装備時の浮遊VIIと落下ダメージ無効は変更なし。
- 両手に天翔の剣を装備した場合は、左手側の浮遊解除を優先。
- 右手・左手のどちらにも装備していない場合は、落下ダメージ無効を解除。
- ショップ表示と新しく購入する天翔の剣のloreを、左右の効果が分かる表記へ更新。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 左手装備時に落下ダメージ無効と浮遊の即時解除を付与するよう、ユーザーから指定されたため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/special/tick.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/product/give/21.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/ui/stage/7.mcfunction`
- 関連要素:
  - 商品ID: `21`
  - item: `minecraft:golden_sword`
  - item custom data: `shop_sky_sword:1b`
  - effect: `minecraft:levitation`
  - attribute: `minecraft:fall_damage_multiplier`
  - modifier: `main:shop_sky_sword_fall`、値`-1`、operation `add_multiplied_total`
  - tag: `ShopSkyFall`
  - 装備判定: `weapon.mainhand`、`weapon.offhand`
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 右手装備時に浮遊VII相当のamplifier 6を継続付与する処理が維持されていることを確認。
  - 左手装備時に`minecraft:levitation`を毎tick解除することを確認。
  - 右手・左手のどちらでも落下ダメージ無効modifierを1個だけ維持することを確認。
  - どちらの手にも天翔の剣がない場合だけmodifierと`ShopSkyFall`を解除することを確認。
  - 右手の浮遊付与後に左手の浮遊解除を処理するため、両手装備時は解除が優先されることを確認。
  - ショップ説明と新規購入品のloreが左右の効果と一致することを確認。
  - mcfunctionの括弧・引用符の対応検査を実施し、対象を含む90ファイルで異常なし。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後、右手から左手への持ち替えで浮遊が即時解除され、着地時の落下ダメージが0になることは実機未確認。
  - 左手装備中は効果の付与元を区別せず、他の要因で付与された浮遊も解除する。
  - 既存の天翔の剣も効果処理の対象だが、item loreは自動更新されない。

### パッチノート下書き素材

ステージ

SJP城

天翔の剣の調整

- (新) 左手装備時、浮遊を即時解除し、落下ダメージを無効化。
- 右手装備時の浮遊VII・落下ダメージ無効は変更なし。

## 2026-09-02 — レーティングのチーム合計と時間切れ更新を修正

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: レーティングシステム、時間切れ試合
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: レート計算用の赤・青チーム合計が以前の計算結果へ加算され続ける問題を修正。
- レート変動時に両チームの`total_rating`を0へ初期化してから、その試合に参加している各チームのプレイヤーレートを再集計するよう変更。
- バグの修正: 時間切れ試合で、残り時間が220tick以下になってからレート更新が毎tick呼ばれていた問題を修正。
- 時間切れ時のレート更新を、`時間 time`が20の終了tickに1回だけ呼ぶよう変更。
- チケットが0以下になった場合のレート更新経路と、既存の増減値は変更なし。

### 理由・背景

- 根拠区分: ユーザー確認済み
- チーム合計を試合ごとに初期化し、時間切れ試合でもレート更新を1回だけ実行するよう、ユーザーから指定されたため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/rating/rating_change.mcfunction`
  - `datapacks/pvp/data/main/function/time/time_finish.mcfunction`
- 関連要素:
  - scoreboard objective: `rating`、`total_rating`、`RatingSetting`、`time`
  - fake player: `赤チーム合計`、`青チーム合計`、`ステージ決め`、`時間`
  - function: `main:rating/rating_change`
  - 時間切れ時の呼び出し条件: `RatingSetting matches 1` → `時間 time matches 20`かつ`RatingSetting matches 1`
  - チーム合計処理: 前回値への継続加算 → 呼び出しごとに両チームを0へ初期化してから再集計
- データパック外の変更: なし
- `data/scoreboard.dat`では`rating`、`total_rating`、`RatingSetting`の存在と、修正前の蓄積値を読み取り確認済み。scoreboard NBTの現在値は変更していないため、既存のチーム合計値は次回のレート変動時に0へ初期化される。
- command block、entity、座標、region NBTは変更していない。先行調査では保存済みregion・entityデータにレーティングfunctionへの直接参照は見つからず、時間切れ処理は既存のデータパック内呼び出し経路のみ変更した。

### 検証

- 静的確認:
  - `rating_change.mcfunction`のチーム別集計より前に、赤・青両方の`total_rating`初期化が1件ずつ存在することを確認。
  - `time_finish.mcfunction`のレート更新が`時間 time matches 20`と`RatingSetting matches 1`の両条件を要求することを確認。
  - `main:rating/rating_change`の呼び出し元が、時間切れ用とチケット終了用の2か所だけであることを確認。
  - チケット終了用の既存呼び出し条件が変更されていないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後、時間切れ試合でレートが1回だけ変動し、チーム合計がその試合の参加者だけから計算されることは実機未確認。
  - 現在保存されている大きな`total_rating`値は直接修正しておらず、次回のレート変動実行時に上書きされる。

### パッチノート下書き素材

システム

レーティング

- バグの修正: チーム合計レートが試合をまたいで加算され続ける問題を修正し、試合ごとに再集計。
- バグの修正: 時間切れ試合でレート更新が繰り返される問題を修正し、終了時の1回だけ変動するよう変更。

## 2026-09-02 — 魔王の書の説明見切れを修正

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: 魔王、魔王の書
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: 魔王の書で一部スキル説明がページ下部から見切れる問題を修正。
- 各スキルの説明を「基本性能」と「強化内容」の2ページへ分割し、魔王の書を10ページから20ページへ変更。
- スキルを選択する「スキルの書」は、従来どおり改行を空けない1ページ構成を維持。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 一部のスキル説明が見切れているため、1スキルを2ページに分けてもよいという指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - item: `minecraft:written_book`、タイトル`魔王の書`
  - 火、水、風、土、光、闇、炎、雷、氷、混沌の10スキルを、それぞれ2ページへ分割。
  - 各スキルの初期性能、エレメント獲得条件、段階強化の説明を維持。
  - `give_skill_book.mcfunction`は変更していない。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 魔王の書の`written_book_content`がJSONとして解析でき、20ページあることを確認。
  - 10スキルが各2ページずつ、元の順番を維持していることを確認。
  - 各ページの推定表示行数が最大13行以内であることを確認。
  - 各スキルの主要な最終強化説明と、直近調整した炎・氷の鈍足説明が残っていることを確認。
  - スキルの書が従来どおり1ページ構成であることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - Minecraftの実際のフォント描画で全ページが見切れないことは実機未確認。
  - 変更前から所持している魔王の書は自動更新されないため、再付与後の本で確認する必要がある。

### パッチノート下書き素材

ジョブ

魔王

魔王の書

- バグの修正: スキル説明が見切れる問題を修正し、各スキルを基本性能・強化内容の2ページ構成へ変更。

## 2026-09-02 — 魔王の土魔法の初期範囲を拡大

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、土の魔法
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- 土の魔法の初期効果範囲: 3m → 4m
- 土エレメント8ごとの効果範囲+1mは維持し、上限を12mに設定。
- 土エレメント64で12mへ到達し、72でも12mを超えない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 土の魔法の初期範囲を4mへ拡大し、最大範囲を12mにする指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/earth/calculate.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/earth.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - scoreboard: `MKEarth`、`MKRange`、`MKCount`
  - 範囲計算: `4 + floor(MKEarth / 8)`を計算後、13以上を12へ制限。
  - 土強化のtellrawへ上限12mを追記し、土72では範囲が増加しない内容へ分岐。
  - アイテム`魔王の書`の土魔法基本ページと強化ページを新仕様へ同期。
  - エレメント確認時の現在範囲表示は、既存の`info/earth.mcfunction`が`MKRange`を表示するため計算結果へ自動追従する。
- データパック外の変更: なし
- command block、world NBT、scoreboard objective、entity、座標は変更・再調査していない。

### 検証

- 静的確認:
  - 土0～7で4m、土8で5m、土56で11m、土64～72で12mになることを確認。
  - `MKRange`が13以上になった場合に12へ制限されることを確認。
  - 土強化のtellrawと魔王の書に上限12mが記載されていることを確認。
  - 魔王の書の`written_book_content`がJSONとして解析でき、20ページ構成を維持していることを確認。
  - 土魔法の強化ページが推定10行以内に収まることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - 実際の戦闘中の対象検知、ダメージ、デバフ範囲が4～12mで動作することは実機未確認。
  - 変更前から所持している魔王の書は自動更新されないため、再付与後の本で確認する必要がある。

### パッチノート下書き素材

ジョブ

魔王

スキル：土の魔法

- 初期効果範囲: 3m → 4m
- 土8ごとの効果範囲+1mは維持し、上限を12mに設定。

## 2026-09-09 — 召喚ウォーデンの体力を200へ変更

- 状態: 実装済み
- パッチ区分: ステージ
- 対象: SJP城限定ショップ、ウォーデンのスポーンエッグ
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- ウォーデンのスポーンエッグで召喚されるウォーデンの現在体力と最大体力を200へ変更。
- ショップ説明と新しく購入するスポーンエッグのloreへ「体力200」を追記。
- 召喚ウォーデンの名前「ウォーデン」、購入者の所属チーム、`MTentity`タグは変更なし。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 召喚するウォーデンの体力を200にするよう、ユーザーから指定されたため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/console/product/give/20.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/console/ui/stage/7.mcfunction`
- 関連要素:
  - 商品ID: `20`
  - item: `minecraft:warden_spawn_egg`
  - entity: `minecraft:warden`
  - entity NBT: `Health:200.0f`
  - attribute: `minecraft:max_health`、base `200.0`
  - entity name: `ウォーデン`
  - entity team: 購入者に応じて`Red`または`Blue`
  - entity tag: `MTentity`
- データパック外の変更: なし
- command block、world NBT、既存entity、座標、scoreboard objectiveは変更・再調査していない。

### 検証

- 静的確認:
  - 赤チーム用・青チーム用の両方の`entity_data`に`Health:200.0f`と最大体力base `200.0`が設定されていることを確認。
  - 両チームの名前「ウォーデン」、チーム指定、`MTentity`タグ、Adventureモード設置用`can_place_on={}`が維持されていることを確認。
  - ショップ説明と新規購入品のloreが体力200の仕様と一致することを確認。
  - mcfunctionの括弧・引用符の対応検査を実施し、対象を含む90ファイルで異常なし。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後、新しく購入した卵から現在体力200・最大体力200のウォーデンが召喚されることは実機未確認。
  - 変更前に購入済みのスポーンエッグは`entity_data`とloreが自動更新されないため、新しい仕様にはならない。

### パッチノート下書き素材

ステージ

SJP城

ウォーデンのスポーンエッグの調整

- 召喚ウォーデンの現在体力・最大体力を200へ変更。

## 2026-09-09 — 殺人鬼の武器2種を初期配布へ変更

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 殺人鬼、グラインダー、クラッシャー
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- (新) 殺人鬼を選択した時点で、グラインダーとクラッシャーの両方を配布するよう変更。
- スニークでグラインダーとクラッシャーを切り替える方式を廃止し、インベントリ内で通常どおり持ち替える方式へ変更。
- グラインダーの攻撃力補正: `+3` → `+2`
- クラッシャーの攻撃力補正: `+0` → `+1`
- クラッシャーのノックバック補正: `+1` → `+1.5`

## 2026-09-09 — コインゲート取得時に効果音を追加

- 状態: 実装済み
- パッチ区分: システム
- 対象: コインゲート、チームコイン取得通知
- 公開時の重要度: 小規模

### プレイヤー向け変更内容

- (新) コインゲートからチームコインを取得した際、コインを獲得したチーム全員へ効果音を再生。
- 効果音は`minecraft:entity.experience_orb.pickup`、音量`0.8`、音程`1.4`。
- 相手チームには効果音を再生しない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- コイン取得時に効果音が鳴るよう、ユーザーから指定されたため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/capture/red.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/capture/mid.mcfunction`
  - `datapacks/pvp/data/main/function/mode/shop/diamond/gate/capture/blue.mcfunction`
- 関連要素:
  - sound: `minecraft:entity.experience_orb.pickup`
  - sound category: `master`
  - 対象selector: `@a[team=Red]`または`@a[team=Blue]`
  - scoreboard: `ShopCoin`、`diamond`、`ShopGateCD`
  - entity tag: `CoinGateAnchor`、`diared`、`diamid`、`diablue`、`dia`、`CoinGateCooldown`
- データパック外の変更: なし
- command block、world NBT、既存entity、座標、scoreboard objectiveは変更・再調査していない。

### 検証

- 静的確認:
  - 赤側・中央・青側の3つのcapture functionすべてに、赤チーム用と青チーム用の効果音処理が各1件存在することを確認。
  - 回収者の所属チームと同じチームだけが効果音の対象になることを確認。
  - チーム全員への`ShopCoin +1`、actionbar通知、個人進捗リセット、3000tickのクールダウン、ゲート更新処理が維持されていることを確認。
  - mcfunctionの括弧・引用符の対応検査を実施し、対象を含む90ファイルで異常なし。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後、各ゲートを赤・青それぞれのチームで回収し、獲得チーム全員にだけ効果音が聞こえることは実機未確認。

### パッチノート下書き素材

システム

コインゲート

- (新) コイン取得時、獲得チーム全員へ効果音を再生。
- 両武器の上記以外のattribute、名前、lore、耐久無限設定は変更していない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- グラインダーとクラッシャーをスニーク操作で切り替える方式ではなく、最初から両方を所持して任意に持ち替えられる方式にする指定を反映した。同時に両武器の攻撃性能を指定値へ調整した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/isaac.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/isaac/isaac.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/isaac/isaac_sub_sub.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/isaac/isaac_sub_sub_sub.mcfunction`
- 関連要素:
  - player tag: `Isaac`
  - 旧持ち替え用tag: `Sharpisaac`、`Knocbackisaac`
  - item: `minecraft:netherite_hoe`（グラインダー）、`minecraft:netherite_pickaxe`（クラッシャー）
  - グラインダー: `minecraft:attack_damage`の`add_value`を3から2へ変更。
  - クラッシャー: `minecraft:attack_damage`の`add_value` 1を追加し、`minecraft:attack_knockback`の`add_value`を1から1.5へ変更。
  - 防具装備用のinventory slot参照をずらさないため、クラッシャーは防具をarmor slotへ移してinventoryから除去した後に配布。
  - `main:pvp/isaac/isaac`から旧持ち替えfunctionの呼び出しと`Sharpisaac`解除処理を削除。スニークscoreのリセット処理は既存どおり維持。
  - 旧持ち替え用サブfunctionは削除せず、内部の武器定義のみ新しい数値へ同期。
- データパック外の変更: なし
- world NBT、command block、scoreboard objective、entity、座標は変更していない。
- ワールド側依存の読み取り確認:
  - Overworld、Nether、Endのregion内105,910チャンクを読み取り走査し、旧持ち替えfunction、`Sharpisaac`、`Knocbackisaac`を直接参照するcommand blockがないことを確認。

### 検証

- 静的確認:
  - 職業選択時に、既存の防具装備処理を維持したままグラインダーとクラッシャーが各1個配布されることを確認。
  - 常時処理から`main:pvp/isaac/isaac_sub`の呼び出しがなくなり、スニークによる武器の削除・再配布へ到達しないことを確認。
  - 初期配布と旧サブfunctionのグラインダーが攻撃力補正`+2`、クラッシャーが攻撃力補正`+1`・ノックバック補正`+1.5`で一致することを確認。
  - グラインダーの攻撃速度`+3`・射程`+0.7`、クラッシャーの移動速度`-0.1`・防具`+5`・攻撃速度`+0.5`・射程`+1.2`が維持されていることを確認。
- Minecraft実機確認: 実施済み（稼働中のMinecraft 1.21.5サーバーで`reload`を実行し、対象functionに読み込みエラーがないことを確認）
- 残る懸念・未確認事項:
  - 殺人鬼を実際に再選択し、両武器の配布、手動持ち替え、表示される攻撃力・ノックバックを確認するプレイテストは未実施。
  - 変更前から所持しているグラインダーとクラッシャーは自動更新されないため、職業の再選択後に新規配布された武器が対象。
  - `reload`時には今回と無関係な既存functionの読み込みエラーが残っている。

### パッチノート下書き素材

ジョブ

殺人鬼

武器の調整

- グラインダーとクラッシャーを、職業選択時に両方配布するよう変更。スニークによる切り替え方式を廃止。
- グラインダーの攻撃力補正: `+3` → `+2`
- クラッシャーの攻撃力補正: `+0` → `+1`
- クラッシャーのノックバック補正: `+1` → `+1.5`

## 2026-09-09 — チーム全員同意式の降参機能を追加

- 状態: 実装済み
- パッチ区分: システム
- 対象: 降参、試合終了
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- (新) 同じチームの全員が降参ボタンを押すと、そのチームの敗北として試合を終了する機能を追加。
- 一度同意したプレイヤーが再度ボタンを押した場合は、同意済みであることを本人へ表示。
- 降参成立後は、通常のチケット決着と同じ終了経路でレート・戦績・試合終了処理を実行。

### 理由・背景

- 根拠区分: ユーザー確認済み
- リスポーン地点に設置する物理ボタンから、チーム全員の同意を確認したうえで降参できるようにする指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/stage/surrender/request.mcfunction`
  - `datapacks/pvp/data/main/function/stage/surrender/request_player.mcfunction`
  - `datapacks/pvp/data/main/function/stage/surrender/red.mcfunction`
  - `datapacks/pvp/data/main/function/stage/surrender/blue.mcfunction`
  - `datapacks/pvp/data/main/function/stage/surrender/finish_red.mcfunction`
  - `datapacks/pvp/data/main/function/stage/surrender/finish_blue.mcfunction`
  - `datapacks/pvp/data/main/function/finish/finish.mcfunction`
- 関連要素:
  - player team: `Red`、`Blue`
  - player tag: `Surrender`
  - scoreboard: `ticket`、`Mode`、一時fake player `#SurrenderMode`
  - 通常終了経路: `main:pvp/ticket/ticket_finish`
  - 押下者判定: function実行位置から4ブロック以内の最寄りプレイヤー
  - 全員判定: 現在オンラインで対象チームに所属する全プレイヤー
- データパック外の変更: なし
- 物理ボタン、コマンドブロック、座標、world NBT、scoreboard objectiveは変更していない。コマンドブロックには`function main:stage/surrender/request`を設定する想定。
- `Mode=1`のガチエリア優先設定でも降参側を確実に敗北として記録するため、終了処理中のみ`勝利判断モード Mode`を`0`へ退避・変更し、通常終了後に元の値へ復元する。
- 降参側の`ticket`を`0`にし、相手側も`0`以下だった場合は相手側を`1`にして、引き分けではなく降参側の敗北を保証する。

### 検証

- 静的確認:
  - 追加した6つのfunctionから参照する全functionが存在することを確認。
  - 赤・青それぞれで、未同意者が残る間は終了せず、対象チーム全員に`Surrender`が付いた場合だけ各降参終了functionへ到達する構造を確認。
  - 降参成立時に`main:pvp/ticket/ticket_finish`を通り、既存のマスタリー、レート、戦績記録、`main:finish/finish`、勝利タイトルへ到達することを確認。
  - 通常終了時に`Surrender`を全プレイヤーから削除し、次試合へ同意状態を持ち越さないことを確認。
  - 追加functionの波括弧・角括弧の個数対応を確認し、異常なし。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`による読み込み、赤・青双方の複数人同意、重複押下、レート・戦績記録、終了後の判定モード復元は実機未確認。
  - 物理ボタンでは押した本人を直接取得できないため、コマンドブロック位置から4ブロック以内の最寄りプレイヤーを押下者として扱う。複数人がボタン付近に密集した場合、実際の押下者とは別の最寄りプレイヤーが記録される可能性がある。
  - オフラインのチームメンバーは全員判定に含まれない。

### パッチノート下書き素材

システム

降参

- (新) 同じチームの全員が降参ボタンを押すと、そのチームの敗北として通常の試合終了処理を行う機能を追加。

## 2026-09-09 — 簡易2vs2の余剰プレイヤーを観戦者化

- 状態: 実装済み
- パッチ区分: システム
- 対象: 簡易チーム編成、2vs2ピック、観戦者
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- バグの修正: 5人以上で簡易2vs2編成を実行した際、青チーム2人・赤チーム残り全員となり、2vs3以上になる問題を修正。
- 簡易2vs2編成は、青チーム2人・赤チーム2人をランダムに選び、残りのプレイヤーをチーム未所属のspectatorにするよう変更。
- (新) 観戦者にも、ピック開始、ファーストピック、BAN・ピック結果、各フェーズ開始、ステージ決定、完了・中止のメッセージとピック進行ボスバーを表示。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 5人時にも2vs2を維持し、余剰プレイヤーが観戦しながらピック進行を確認できるようにする指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/mode/team_set.mcfunction`
  - `datapacks/pvp/data/main/function/mode/team_set2.mcfunction`
  - `datapacks/pvp/data/main/function/mode/team_set3.mcfunction`
  - `datapacks/pvp/data/main/function/start/start.mcfunction`
  - `datapacks/pvp/data/main/function/finish/finish.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/start.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/reset.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/finish.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/begin_pick.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/phase/begin_ban.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/input/job.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/stage/announce_confirm.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/complete/ban_none.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/abort.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/pick/abort/player_count.mcfunction`
- 関連要素:
  - team: `Blue`、`Red`
  - 一時抽選tag: `Chusen`
  - 簡易2vs2観戦者tag: `TeamSetSpectator`
  - ピック参加者tag: `PickParticipant`
  - ピック閲覧者tag: `PickViewer`
  - gamemode: `adventure`、`spectator`
  - bossbar: `main:pick`
- データパック外の変更: なし
- 簡易編成を呼び出すcommand block、看板、座標、world NBT、scoreboard objectiveは変更・再調査していない。
- `TeamSetSpectator`は簡易2vs2の余剰者へ付与し、全員を一度adventureへする既存の試合開始処理直後にspectatorへ戻すために使用。通常終了時、および2vs2・3vs3・1vs4の各簡易編成を再実行した際に解除する。
- `PickViewer`はピック操作権を与えず、参加者とspectatorをメッセージ・ボスバーの表示対象へまとめるために使用。ピックresetで解除する。

### 検証

- 静的確認:
  - `team_set`が`Blue`へ最大2人、続いて残りから`Red`へ最大2人だけを選び、残った`Chusen`保持者をspectatorにすることを確認。
  - 旧処理`team join Red @a[tag=Chusen]`が削除されていることを確認。
  - 選出された赤青4人をadventureへし、再編成時に以前の観戦者が選ばれてもピックへ参加できる構造を確認。
  - `start/start`が全員をadventureへした直後、`TeamSetSpectator`保持者をspectatorへ戻すことを確認。
  - ピックの既存メッセージ14箇所が`PickViewer`を対象とし、`PickParticipant`限定の旧メッセージが0件であることを確認。
  - `PickAllowed`、`PickStageAllowed`、人数集計などの操作・進行判定は引き続き`PickParticipant`と赤青チームだけを使用し、観戦者に操作権を与えていないことを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`による読み込み、5人以上での抽選結果、観戦者のゲームモード維持、全ピック通知・ボスバー表示は実機未確認。
  - 簡易編成functionのワールド側呼び出し元と実行順序は今回再調査していない。

### パッチノート下書き素材

システム

簡易2vs2チーム編成

- バグの修正: 5人以上で編成した際に赤チームが3人以上になる問題を修正。
- 青チーム2人・赤チーム2人を選び、残りのプレイヤーを観戦者にするよう変更。
- 観戦者にもピック中の進行メッセージとボスバーを表示。

## 2026-09-09 — 1vs4モードの旧コマンド構文を1.21.5形式へ移行

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: 1vs4モード、キラー、逃亡者、タスク表示
- 公開時の重要度: 大規模

### プレイヤー向け変更内容

- バグの修正: 旧item NBT、旧テキストコンポーネント、旧particle構文などにより読み込めなかった1vs4関連functionを、Minecraft Java Edition 1.21.5で読み込める形式へ移行。
- キラー・逃亡者の選択本、武器、防具、食料、飲料、矢、スキルアイテムの名前、説明、効果、エンチャント、attribute、個数、必要ポイントを維持。
- タスク用entityの名前、タスク達成状況particle、視線判定predicate、簡易設定看板を1.21.5形式へ移行。
- チーム分け、scoreboard値、tag、効果範囲、効果時間、選択肢、タスク進行条件は変更していない。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 1vs4モード全体に残る旧構文を特定し、既存仕様をできるだけ維持したまま1.21.5で実行可能にする指定を反映した。
- 稼働中サーバーの変更前ログでも、旧item NBTと登録されていないpredicateが原因で1vs4関連functionの読み込み失敗を確認した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/killer.mcfunction`
  - `datapacks/pvp/data/main/function/job_selection/escaper.mcfunction`
  - `datapacks/pvp/data/main/function/mode/1vs4`配下6ファイル
  - `datapacks/pvp/data/main/function/pvp/killer/item`配下4ファイル
  - `datapacks/pvp/data/main/function/pvp/escaper`配下23ファイル
  - `datapacks/pvp/data/main/predicate/looking_at.json`へ移設
  - 旧配置`datapacks/pvp/data/main/predicates/looking_at.json`を削除
- 関連要素:
  - item component: `minecraft:custom_name`、`minecraft:lore`、`minecraft:unbreakable`、`minecraft:enchantments`、`minecraft:attribute_modifiers`、`minecraft:potion_contents`、`minecraft:dyed_color`、`minecraft:written_book_content`、`minecraft:tooltip_display`
  - item判定: `SelectedItem` NBTから`execute if items`へ移行
  - text component: 直接SNBT形式、`hover_event`、`click_event`、`command`、整数の`page`
  - particle: `minecraft:dust{color:[...],scale:2.0}`
  - block entity: 看板の`front_text.messages`を直接text componentへ移行
  - entity: armor standとallayの`CustomName`を直接text componentへ移行
  - predicate: `main:looking_at`
- データパック外の変更: なし
- world NBT、command block、scoreboard objective、既存entity、座標、建築物は変更していない。

### 検証

- 静的確認:
  - 1vs4、Killer、Escaperの対象範囲で、移行対象にした旧item NBT、旧ポーションNBT、`SelectedItem`、旧dust particle、旧看板テキストの残存が0件であることを確認。
  - 別の一時ワールドへデータパックをコピーし、Minecraft Java Edition 1.21.5サーバーで読み込み。`main:job_selection/killer`、`main:job_selection/escaper`、`main:mode/1vs4`、`main:pvp/killer`、`main:pvp/escaper`に属するfunctionの読み込み失敗は0件。
  - `give_killer_book`、`give_escaper_book`、`looking_at`、`tasseijoukyou_particle`、`job_selection/killer`、`job_selection/escaper`の6入口が登録され、コンソールから実行開始できることを確認。
- Minecraft実機確認: 一時サーバーで構文とfunction登録を確認。本番SJPワールドでの複数人プレイテストは未実施。
- 残る懸念・未確認事項:
  - キラー1人・逃亡者4人でのチーム分け、各本の全click event、アイテム効果、タスク進行、勝敗終了までの一連の実プレイは未確認。
  - データパック全体には今回の1vs4範囲外の既存1.21.5構文エラーと無効なファイルパスが多数残っている。
  - 変更前からプレイヤーが所持している旧形式アイテムは自動更新されないため、職業・パークを再選択して新規配布する必要がある。

### パッチノート下書き素材

不具合修正

1vs4モード

- 旧コマンド構文が原因でキラー・逃亡者の選択本、装備、スキル、タスク表示が読み込めない問題を修正。
- 1vs4関連コマンドをMinecraft Java Edition 1.21.5形式へ移行。

## 2026-09-11 — 魔王に右クリック技能「魔喰」を追加

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、魔喰
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- (新) 魔王の初期所持品に、右クリック技能`魔喰`を追加。
- 魔喰を右手または左手に持って右クリックすると、MPを100消費し、`effect give @s minecraft:saturation 1 3`で満腹度を4回復する。
- MPが100未満の場合は発動せず、MP不足を通知する。
- CTとCDはなく、MPが足りる限り使用できる。
- 魔王の書へ魔喰の説明ページを追加。

### 理由・背景

- 根拠区分: ユーザー確認済み
- MP100を消費して満腹度を4回復する右クリック技能を、魔王へ初期配布する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/magicking.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/setup.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/setup_devour.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/main.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/reset_player.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/reset_world.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_devour.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/devour/use.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - item: `minecraft:carrot_on_a_stick`、表示名`魔喰`、custom data `magic_king_devour:1b`
  - scoreboard objective: `MKDevourUse`（criterion: `minecraft.used:minecraft.carrot_on_a_stick`）
  - scoreboard: `WizardMP`
  - effect: `minecraft:saturation 1 3`
  - storage: `main:magicking`の`devour_setup`
  - 既存ワールドでは魔王の共通setupが完了済みでも、新objectiveだけを一度作成する移行処理を追加。
  - 右手・左手のcustom dataを照合し、魔王tagを持つ使用者本人だけを発動対象にする。
  - 試合終了時、ドロップ状態の魔喰を削除する。
  - 魔王の書: 20ページ → 21ページ。スキル選択専用のスキルの書は変更なし。
- データパック外の変更: なし
- 保存済み`data/scoreboard.dat`に`MKDevourUse`が未作成で、`data/command_storage_main.dat`に従来の魔王setup状態が保存され、`devour_setup`がないことを読み取り確認した。NBTは変更していない。
- command block、既存entity、座標、region NBTは変更・再調査していない。継続処理は既存の`main:pvp/pvp_control`から呼ばれる魔王用mainへ追加した。

### 検証

- 静的確認:
  - MP100以上の場合だけ100を減算し、その後に使用者本人へ`minecraft:saturation 1 3`を付与する順序を確認。
  - MP100未満ではeffectとMP減算の前に処理を終了することを確認。
  - 魔喰の配布itemと右手・左手判定で、同じcustom dataを使用していることを確認。
  - 新規3functionを含む変更範囲のfunction参照先がすべて存在することを確認。
  - 既存ワールドで`MKDevourUse`を作成する移行経路が、魔王選択時・継続処理時・専用リセット時にあることを確認。
  - 魔王の書の`written_book_content`がJSONとして解析でき、魔喰を含む21ページ構成であることを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後、実際の右クリックで`MKDevourUse`が増加し、MP消費と満腹度回復が1回だけ発生することは実機未確認。
  - 右手・左手での入力、MP不足通知、初期配布、試合終了時のドロップ削除は実機未確認。
  - 変更前から所持している魔王の書は自動更新されないため、再付与後の本で確認する必要がある。

### パッチノート下書き素材

ジョブ

魔王

スキル：魔喰

- (新) 右クリックでMP100を消費し、満腹度を4回復。
- 魔王選択時に専用アイテムを初期配布。

## 2026-09-11 — 魔喰の攻撃時MP回復を追加

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、魔喰
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- (新) 魔喰をメインハンドに持って敵を直接殴ると、MPを30回復する。
- 回復後のMPは最大値1000を超えない。
- 味方への攻撃、魔法や飛び道具によるダメージでは回復しない。
- 魔喰のアイテム説明と魔王の書へ、攻撃時のMP回復を追記。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 魔喰で敵を殴った際にMPを30回復する指定を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/advancement/magicking/devour_hit_blue.json`（新規）
  - `datapacks/pvp/data/main/advancement/magicking/devour_hit_red.json`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/devour/hit_blue.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/devour/hit_red.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/devour/recover_mp.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_devour.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - advancement trigger: `minecraft:player_hurt_entity`
  - damage type tag: `minecraft:is_player_attack`
  - item custom data: `magic_king_devour:1b`
  - scoreboard: `WizardMP`
  - 対象がBlueならRedの魔王、対象がRedならBlueの魔王だけを回復対象にする。
  - advancement報酬functionの先頭で自身の達成状態をrevokeし、次の直接攻撃でも再発動できるようにした。
  - 反対チームに所属するplayer・mob等を敵として扱う。無所属entityは対象外。
- データパック外の変更: なし
- command block、scoreboard.dat、既存entity、座標、region NBTは変更していない。

### 検証

- 静的確認:
  - 追加した2件のadvancement JSONが解析できることを確認。
  - advancement報酬から呼ぶ3functionの参照先が存在することを確認。
  - MagicKing tag、攻撃者と対象の反対チーム、メインハンドの魔喰custom dataをすべて満たす場合だけ回復することを確認。
  - `WizardMP`を30加算し、1001以上を1000へ補正することを確認。
  - 魔王の書の`written_book_content`がJSONとして解析でき、魔喰の説明を含む21ページ構成であることを確認。
- Minecraft 1.21.5隔離サーバー確認:
  - 検証専用の一時ワールドで追加データパックを読み込み、2件のadvancement IDをコマンドから解決できることを確認。
  - 検証後、一時ワールドと展開ファイルは削除済み。
- Minecraft実戦確認: 未実施
- 残る懸念・未確認事項:
  - 実際の対戦で、敵への1回の直接攻撃につきMP30回復が1回だけ発生することは未確認。
  - 既存の魔喰もcustom dataが同じため機能対象になるが、新しいloreを表示するには魔王を再選択して再配布する必要がある。
  - 変更前から所持している魔王の書は自動更新されないため、再付与後の本で説明を確認する必要がある。

### パッチノート下書き素材

ジョブ

魔王

スキル：魔喰

- (新) 敵を直接殴るとMPを30回復。
- 回復後のMPは最大1000。味方への攻撃や魔法・飛び道具では回復しない。

## 2026-09-11 — 水の魔法の回復処理を即時回復effectへ変更

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、水の魔法
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: 水の魔法の体力回復が正しく働かない問題に対し、回復処理を`instant_health` effect方式へ変更。
- 水element 20以上70未満: 体力回復量 8 → 4（即時回復I）。
- 水element 70以上: 体力回復量 16 → 8（即時回復II）。
- 水壁の大きさ、持続時間、MP、CT、CDは変更なし。

### 理由・背景

- 根拠区分: ユーザー確認済み（不具合とeffect方式への変更）、実装から確認（即時回復I／IIによる半減値）
- NBTの`Health`をscoreboard経由で直接書き換える共通回復functionではなく、既存実装でも使われている`effect give`方式で確実に回復を発生させる。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/water/calculate.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/water/cast.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/water.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
- 関連要素:
  - effect: 水20～69は`effect give @s minecraft:instant_health 1 0 true`。
  - effect: 水70以上は`effect give @s minecraft:instant_health 1 1 true`。
  - scoreboard: `MKWater`、表示用`MKPower`。
  - 水の魔法から`main:pvp/magicking/util/heal`の呼び出しを削除。光の魔法は同functionを引き続き使用するため、共通function自体は変更していない。
  - 水の現在性能表示、element到達時tellraw、魔王の書を4／8の表記へ同期。
- データパック外の変更: なし
- command block、scoreboard.dat、既存entity、座標、region NBTは変更・再調査していない。

### 検証

- 静的確認:
  - 水20～69と水70以上の条件が重複せず、それぞれ即時回復I／IIを1回だけ付与することを確認。
  - `MKPower`の表示値が水20で4、水70で8になることを確認。
  - 水の通知と魔王の書に旧回復量8／16が残っていないことを確認。
  - 魔王の書の`written_book_content`をJSON解析し、21ページ構成と水の強化説明を確認。
  - 使用した`instant_health`のコマンド形式が、同データパック内の既存functionで使われている形式と一致することを確認。
- Minecraft実機確認: 未実施
- 残る懸念・未確認事項:
  - `/reload`後の実戦で、水の魔法1回につき指定量だけ回復することは未確認。
  - 変更前から所持している魔王の書は自動更新されないため、説明確認には再付与が必要。

### パッチノート下書き素材

不具合修正

魔王

スキル：水の魔法

- 体力回復処理を即時回復effect方式へ変更。
- 水20の回復量: 8 → 4。
- 水70の回復量: 16 → 8。

## 2026-09-12 — 魔王の風・土・到達報酬・魔喰・性能表示を調整

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 魔王、風の魔法、土の魔法、エレメント到達報酬、魔喰、エレメント確認
- 公開時の重要度: 通常

### プレイヤー向け変更内容

- 風の魔法:
  - (新) 風element 20以上で、味方entity全体へ低速落下を15秒付与。
  - 風20～69の速度上昇は従来どおり術者本人のみ、風70では速度上昇IVと低速落下を味方entity全体へ15秒付与。
- 土の魔法:
  - 耐性の持続時間に30秒の上限を追加。
  - 威力に20の上限を追加。
  - (新) 発動時、現在の攻撃範囲の外周を16方向のcritパーティクルで表示。
  - 土20のデバフ: 採掘速度低下IIIを5秒 → 鈍足Iを5秒。
  - 土70の鈍足III・5秒は変更なし。
- エレメント到達報酬:
  - 魔王の剣の獲得条件: 火20 → 火40。
  - 基礎移動速度0.1の獲得条件は風40のまま。
  - 基礎体力50の獲得条件: 土30 → 土40。
  - 3報酬の必要elementを40へ統一し、魔王の書へ報酬ページを追加。
- 魔喰:
  - (新) 満腹度が20以上の場合、右クリックしてもMPを消費せず、満腹度回復も発動しない。
  - 満腹時は使用しなかったことを本人へ通知。
- エレメント確認:
  - 選択中の全10魔法について、現在値に応じた対象、バフ、デバフ、回復、追加効果、element獲得条件を表示するよう拡充。

### 理由・背景

- 根拠区分: ユーザー確認済み
- 指定された風・土の効果調整、到達報酬の40統一、魔喰の誤操作防止、現在性能表示の情報補完を反映した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/wind/cast.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/wind.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/earth/calculate.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/earth/cast.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/earth/apply.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/spell/earth/particle.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/earth.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/notify/fire.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/reward/fire20.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/reward/earth30.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/devour/use.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/devour/full.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_devour.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/item/give_magic_book.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/fire.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/water.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/wind.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/earth.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/light.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/dark.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/flame.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/thunder.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/ice.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/magicking/info/chaos.mcfunction`
- 関連要素:
  - effect: `minecraft:slow_falling 15 0 true`、`minecraft:slowness 5 0 true`、土70は`minecraft:slowness 5 2 true`。
  - scoreboard: `MKWind`、`MKEarth`、`MKPower`、`MKDuration`、`MKCount`、`MKPrev`。
  - player NBT: 魔喰使用時に`foodLevel`を読み取り、20以上なら専用functionから早期終了。
  - 土のパーティクルは現在の`MKRange`をstorageへ保存し、macroのローカル座標で半径4～12mの外周へ表示。
  - 互換性維持のため、内部function名`reward/fire20`と`reward/earth30`は変えず、呼び出し条件と表示内容を40へ変更。
  - 魔王の書: 21ページ → 22ページ。スキル選択専用のスキルの書は変更なし。
- データパック外の変更: なし
- command block、scoreboard.dat、既存entity、座標、region NBTは変更・再調査していない。

### 検証

- 静的確認:
  - 土element 0、6、30、36、54、60、72で威力と耐性時間を計算し、最大値が威力20・30秒になることを確認。
  - 土20の採掘速度低下参照と、旧報酬条件を示す表示が魔王実装内に残っていないことを確認。
  - 火・風・土の報酬functionがいずれも40到達時に呼ばれることを確認。
  - 魔喰が`foodLevel`をMP判定より先に確認し、満腹時はMP減算前に終了することを確認。
  - 全10件のinfo functionに効果・バフ・デバフ・回復の現在情報が含まれることを確認。
  - 魔王配下のfunction参照先がすべて存在することを確認。
  - 魔王の書をJSON解析し、全22ページ、変更した風・土・魔喰・到達報酬の記述を確認。各ページは12行以下。
- Minecraft 1.21.5隔離サーバー確認:
  - 魔王function群を入れた検証用データパックが構文エラーなく読み込まれることを確認。
  - `main:pvp/magicking/spell/earth/particle {range:4}`を実行し、macroが解決されることを確認。
  - 検証後の一時ワールドと展開ファイルは削除済み。
- Minecraft実戦確認: 未実施
- 残る懸念・未確認事項:
  - 低速落下の対象、土の実ダメージ・デバフ、パーティクルの見え方、魔喰満腹時のMP非消費は実プレイヤーで未確認。
  - `/reload`時点ですでに旧条件で獲得済みの魔王の剣や基礎体力は遡って取り消さない。次回の職業再選択から新しい40条件が一貫して適用される。
  - 変更前から所持している魔王の書と魔喰のloreは自動更新されないため、表示確認には再配布が必要。

### パッチノート下書き素材

ジョブ

魔王

スキル：風の魔法

- 風20から味方entity全体へ低速落下を15秒付与。

スキル：土の魔法

- 威力上限20、耐性持続上限30秒を追加。
- 土20の採掘速度低下IIIを鈍足Iへ変更。
- 攻撃範囲を示すパーティクルを追加。

エレメント到達報酬

- 魔王の剣: 火20 → 火40。
- 基礎移動速度0.1: 風40。
- 基礎体力50: 土30 → 土40。

スキル：魔喰

- 満腹時はMPを消費せず、満腹度回復も発動しない。

エレメント確認

- 選択中の魔法について、現在のバフ・デバフ・対象・追加効果・element獲得条件を表示。

## 2026-09-12 — 画家を戦場で直接描画するシステムへリワーク

- 状態: 実装済み
- パッチ区分: ジョブ
- 対象: 画家、筆、絵の具、砦、子兎、子自在、石柱、長城壁
- 公開時の重要度: 大規模

### プレイヤー向け変更内容

- アトリエへの移動、画家専用MP、剣による絵画切り替え、味方の操作に依存する発動方式を廃止。
- 画家本人が対応する絵の具をQで捨てて絵画を選び、筆を地面へ当て続けることで、その地点を中心に建築物・召喚物を出現させる方式へ変更。
- 筆を当てる操作を中断した場合、5マス以内の有効な地面を見失った場合、または移動した場合はCTをリセット。
- 不可壊の筆をQで投げると、墨のパーティクルを伴う射程10マスのインク弾を発射。敵プレイヤーへ命中すると暗闇を5秒付与し、画家本人のCDを50短縮。投げた筆は固定スロットへ自動復帰。
- 絵の具を追加:
  - シアン: 砦
  - 白: 子兎
  - 空色: 子自在
  - 薄灰色: 石柱
  - 黄緑: 長城壁
- 砦（CT 100 / CD 150）:
  - 描画地点を中心に、入口が画家側を向く東西南北方向で出現。
  - 画家1人につき同時に1つまで。持続120秒、耐性II、画中人2体の召喚を維持。
- 子兎（CT 50 / CD 50）:
  - 描画地点へ5体召喚し、10秒持続。
  - 各子兎から6マス以内の味方プレイヤーへ移動速度上昇IIIを付与。
- 子自在（CT 60 / CD 100）:
  - 描画地点へ2体召喚し、20秒持続。
  - 従来の敵への発光・移動速度低下IIIを維持。
- 石柱（CT 200 / CD 100）:
  - 描画地点を中心に出現し、15秒持続。
  - 10マス以内のすべての味方entityへ移動速度上昇III・攻撃力上昇IIを付与。
  - 従来の敵プレイヤーへの暗闇は廃止せず、味方強化と同時に継続。
- 長城壁（CT 20 / CD 400）:
  - 描画地点を中心に横41マス・高さ6マスで出現し、従来どおり7.5秒持続。
  - プレイヤーの上下視線角を除去し、向きを最寄りの東西南北へ丸めることで、斜めの直方体や縦方向にならず横一列に配置。
  - 従来の味方全体への回復・採掘速度上昇と敵1人への採掘速度低下を維持。

### 理由・背景

- 根拠区分: ユーザー確認済み
- アトリエ、MP、味方依存のタイミングをなくし、画家本人の照準・位置取り・継続操作を判断材料にして、戦場へ直接描画できるジョブへ変えるため。
- 子兎の移動速度上昇はユーザー指定によりIIIとし、石柱は新しい味方強化を追加しつつ旧来の敵への暗闇を残した。
- 長城壁が横一列にならない原因は、プレイヤーの任意のyaw・pitchをそのままローカル座標の`fill`へ使っていたこと。上下角を除去し、水平4方向へ丸めた描画地点markerを基準にする方式へ変更した。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/job_selection/dusk.mcfunction`
  - `datapacks/pvp/data/main/function/stage/mp_control.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/dusk.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/setup.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/dusk/assign_owner.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/dusk/player_tick.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/dusk/entities.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/dusk/items/*.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/dusk/draw/*.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/dusk/projectile/*.mcfunction`（新規）
  - `datapacks/pvp/data/main/function/pvp/dusk/art/duskfortress*.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/art/duskrabbit*.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/art/dusksoldiers*.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/art/duskpiller*.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/art/duskwall*.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/art/duskatelier*.mcfunction`（旧外部呼び出しに対する無処理化）
  - `datapacks/pvp/data/main/function/pvp/dusk/dusk_kirikae.mcfunction`（旧剣切替を無処理化）
  - `datapacks/pvp/data/main/function/pvp/dusk/reset.mcfunction`
  - `datapacks/pvp/data/main/predicate/dusk/using_brush.json`（新規）
  - `datapacks/pvp/data/main/advancement/used_brush.json`（未使用の試作入口を削除）
  - `datapacks/pvp/data/main/function/used_brush.mcfunction`（未使用の試作入口を削除）
- 関連要素:
  - 新規scoreboard: `DuskCast`、`DuskOwner`、`DuskRange`。`main:pvp/dusk/setup`がstorage `main:dusk`の初期化フラグとともに一度だけ作成する。
  - 継続scoreboard: `DuskCooldown`、`Duskkirikae`、`Fortress`、`Wall`、`Piller`、`rabbit`。
  - 召喚tag: `DuskDrawTarget`、`DuskRaycast`、`DuskBrushProjectile`、`DuskRabbitMob`、`DuskArmorStand1`～`3`、`kozizai`、`gatyuzin`。
  - 現行dispatcher `main:pvp/pvp_control`からの`main:pvp/dusk/dusk`呼び出しを継続利用。
  - ワールド内command blockを読み取り調査し、旧アトリエ帰還functionと旧石柱建築functionへの外部呼び出しを確認。command block自体は変更せず、旧アトリエ入口を無処理化し、石柱建築を`Piller=0`の新規markerだけに限定して反復建築を防止。
- データパック外の変更: なし
- command block、`scoreboard.dat`、region NBT、既存entityは読み取り調査のみで変更していない。
- `Sjpジョブ情報.xlsx`は参照のみで、今回の新仕様への更新は行っていない。

### 検証

- 静的確認:
  - データパック内の全JSONを解析し、エラー0件。
  - 画家配下のfunction参照39件と、データパック全体から画家配下へ入る呼び出し58件を確認し、欠落参照0件。
  - 現行画家処理から`DuskMP`、旧剣判定、6番目のアトリエ選択、削除した試作入口への参照がなくなったことを確認。
  - 子兎が移動速度上昇III、石柱が味方全entityへ移動速度上昇III・攻撃力上昇IIと敵プレイヤーへ暗闇を同時付与することを確認。
  - 各CT/CD、召喚数、持続時間、リセット時の建築物・召喚物・一時markerの後始末を照合。
- Minecraft Java 1.21.5隔離サーバー確認:
  - `/reload`を実行し、画家functionおよび`main:dusk/using_brush` predicateに読み込みエラーがないことを確認。
  - reload完了時に1487 advancementsが読み込まれ、predicateをコマンドから解決できることと、`main:pvp/dusk/dusk`を実行できることを確認。
  - 砦、長城壁、石柱を個別に建築し、scoreboardの進行、画中人2体の召喚、専用ブロックの撤去、markerの削除を確認。
  - インク弾を1tick進行させ、墨パーティクル、1マス移動、射程scoreの加算を確認。
  - 検証後、一時サーバーを正常停止し、検証用ワールドと展開ファイルを削除済み。
- Minecraft本番実戦確認: 未実施
- 残る懸念・未確認事項:
  - 本番ワールドではまだ`/reload`しておらず、プレイヤー操作による染料切替、筆の長押し、CT中断、敵への命中判定、CD短縮、全建築物の向き・見え方・当たり判定は未確認。
  - 本番で画家処理が初めて動く際に、新規scoreboard 3件が一度だけ作成される。
  - `Sjpジョブ情報.xlsx`は旧画家仕様のままなので、正本側へ今回の仕様を別途同期する必要がある。

### パッチノート下書き素材

大規模

画家

- アトリエ、MP、剣による切り替えを廃止し、絵の具選択と筆の長押しで戦場へ直接描画するシステムへリワーク。
- 筆の投擲攻撃を追加。敵へ暗闇を5秒付与し、自身のCDを50短縮。
- 砦: CT 100 / CD 150。120秒持続、耐性II、画中人2体、1人1つまで。
- 子兎: CT 50 / CD 50。5体・10秒、周囲6マスの味方へ移動速度上昇III。
- 子自在: CT 60 / CD 100。2体・20秒、敵への発光・移動速度低下III。
- 石柱: CT 200 / CD 100。15秒、味方全entityへ移動速度上昇III・攻撃力上昇II。従来の敵への暗闇も継続。
- 長城壁: CT 20 / CD 400。描画地点を中心とする横一列の配置へ修正し、回復効果を継続。

## 2026-09-12 — 画家の描画CTとインク弾の視線追従を修正

- 状態: 実装済み
- パッチ区分: 不具合修正
- 対象: 画家、筆の描画、インク弾、砦、長城壁
- 公開時の重要度: 不具合修正

### プレイヤー向け変更内容

- バグの修正: 筆を地面へ当て続けても描画地点が認識されず、CTが増加しない問題を修正。
- バグの修正: 筆を投げた際のインク弾が、画家の視線方向ではなく固定方向へ飛ぶ問題を修正。
- 描画完了後の砦と長城壁も、認識した描画方向を正しく引き継ぐよう修正。

### 理由・背景

- 根拠区分: ユーザー確認済み（発生挙動）、実装から確認（原因）
- 画家の照準と継続操作によって描画する、リワーク後の操作意図どおりにCTと投射物を動作させるため。

### 実装記録

- 変更ファイル・function:
  - `datapacks/pvp/data/main/function/pvp/dusk/draw/target_start.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/draw/raycast.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/draw/target_block.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/projectile/launch.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/art/duskfortress_sub.mcfunction`
  - `datapacks/pvp/data/main/function/pvp/dusk/art/duskwall_sub.mcfunction`
- 関連要素:
  - entity NBT: `DuskRaycast`、`DuskDrawTarget`、`DuskBrushProjectile`、砦・長城壁markerの`Rotation`。
  - 原因1: `execute rotated as ...`のあとに`tp @s ~ ~ ~ ~ ~`を実行しても、召喚直後のmarker自身の角度が保持され、画家のyaw・pitchがmarkerへ保存されていなかった。
  - 原因2: 0.25マス刻みの再帰レイキャストで、markerを移動したあとに次のfunctionを`at @s`で再実行しておらず、実行座標が始点から更新されていなかった。
  - 対応: 視線元から各markerの`Rotation`へ明示的にコピーし、レイキャストの各再帰を移動後のmarker座標で実行。
- データパック外の変更: なし
- command block、scoreboard、既存entity、座標、region NBTは変更していない。

### 検証

- 静的確認:
  - 画家配下のfunction参照39件を確認し、欠落参照0件。
  - 問題のあった相対角度テレポートによる角度コピーが画家配下に残っていないことを確認。
  - 視線角の明示コピー5箇所と、移動後の`execute at @s`によるレイ継続を確認。
- Minecraft Java 1.21.5隔離サーバー確認:
  - `/reload`後、画家関連のfunction読み込みエラー0件。
  - 高さ100から真下へ向けたレイが高さ95の地面を検出し、ブロック上面の`[0.5, 96.0, 0.5]`へ描画地点markerを生成することを確認。
  - yaw 90度を設定したインク弾markerが`[90.0f, 0.0f]`を保持し、1tick後にZ固定方向ではなくX方向へ1マス進むことを確認。
  - 検証後、一時サーバーを正常停止し、検証用ワールドと展開ファイルを削除済み。
- Minecraft本番実戦確認: 未実施
- 残る懸念・未確認事項:
  - 実プレイヤーが筆を長押しした際のCT連続加算と、任意のyaw・pitchに対するインク弾の見え方は本番で未確認。

### パッチノート下書き素材

不具合修正

画家

- 筆で地面を擦ってもCTが増加しない問題を修正。
- インク弾が画家の視線方向ではなく固定方向へ飛ぶ問題を修正。
