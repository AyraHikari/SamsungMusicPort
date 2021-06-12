.class public Lcom/samsung/android/app/music/lyrics/LyricsLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;,
        Lcom/samsung/android/app/music/lyrics/LyricsLogger$CloseType;
    }
.end annotation


# instance fields
.field private final mCloseId:Ljava/lang/String;

.field private final mJumpId:Ljava/lang/String;

.field private final mMagnificationId:Ljava/lang/String;

.field private final mScreenId:Ljava/lang/String;

.field private final mTriggerEventId:Ljava/lang/String;

.field private final mTriggerScreenId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;->access$000(Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mScreenId:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;->access$100(Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mTriggerScreenId:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;->access$200(Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mTriggerEventId:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;->access$300(Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mMagnificationId:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;->access$400(Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mJumpId:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;->access$500(Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mCloseId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;Lcom/samsung/android/app/music/lyrics/LyricsLogger$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsLogger;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsLogger$Builder;)V

    return-void
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method public onLoggingLyricsClosed(I)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mCloseId:Ljava/lang/String;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p1, "Back key"

    goto :goto_0

    :pswitch_1
    const-string p1, "Tap screen"

    goto :goto_0

    :pswitch_2
    const-string p1, "Close button"

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->getScreenId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mCloseId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoggingLyricsJumped()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mJumpId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mJumpId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoggingLyricsOpened()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mTriggerScreenId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mTriggerEventId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mTriggerScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mTriggerEventId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->getScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onLoggingLyricsTextMagnificationChanged(I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mMagnificationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p1, "*3"

    goto :goto_0

    :pswitch_1
    const-string p1, "*2"

    goto :goto_0

    :pswitch_2
    const-string p1, "*1"

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->getScreenId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsLogger;->mMagnificationId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/player/logger/PlayerSALoggingUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
