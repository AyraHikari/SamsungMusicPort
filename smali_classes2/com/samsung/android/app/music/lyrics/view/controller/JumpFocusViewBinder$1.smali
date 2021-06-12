.class Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;

.field final synthetic val$lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;I)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;->this$0:Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;

    iput-object p2, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;->val$lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    iput p3, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;->this$0:Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->access$000(Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;->this$0:Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->access$100(Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;->val$lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    iget v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 133
    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v0

    .line 134
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->access$200()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    return-void

    .line 138
    :cond_2
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->seek(J)J

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;->this$0:Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->access$300(Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;)Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;->this$0:Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->access$300(Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;)Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;->onLyricsJumped(J)V

    :cond_3
    return-void
.end method
