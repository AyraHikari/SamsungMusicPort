.class public final Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$DlnaServiceStatus;,
        Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Dlna"

.field private static final REFRESH_DEVICE:I = 0x2

.field private static final SELECT_DEVICE:I = 0x1

.field private static final SUB_TAG:Ljava/lang/String; = "DlnaControlHandler"

.field private static final TAG:Ljava/lang/String; = "SV-Dlna"


# instance fields
.field private final MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

.field private final MEDIA_RENDERER_URI:Landroid/net/Uri;

.field private final MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

.field private final MEDIA_SERVER_URI:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

.field private mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

.field private final mOnDlnaServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    .line 165
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_SERVER_URI:Landroid/net/Uri;

    .line 55
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

    .line 56
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_RENDERER_URI:Landroid/net/Uri;

    .line 57
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->SUB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    return p0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;)Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 3

    const-string v0, "SMUSIC-SV-Dlna"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clear"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    if-eqz v1, :cond_0

    .line 123
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    :cond_0
    return-void
.end method

.method private ensureDlnaManager()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_SERVER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_RENDERER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

    .line 63
    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->createInstance(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 3

    const-string v0, "SMUSIC-SV-Dlna"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 71
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public bindServiceImmediate(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;)V
    .locals 3

    const-string v0, "SMUSIC-SV-Dlna"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindServiceImmediate status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->isNeedToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->ensureDlnaManager()V

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    const/4 p1, 0x1

    .line 81
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->bindDlnaService(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "SMUSIC-SV-Dlna"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage Can\'t handle what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->ensureDlnaManager()V

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->refresh()V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->searchAudioContents(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->bindDlnaService(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isDlnaServiceConnected()Z
    .locals 2

    .line 103
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedToBind()Z
    .locals 1

    .line 99
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refresh()V
    .locals 3

    const-string v0, "SMUSIC-SV-Dlna"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " refresh status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->isDlnaServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 91
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->removeMessages(I)V

    const-wide/16 v1, 0x3c

    .line 92
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->bindService()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " release"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 133
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->clear()V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    const-string v0, "SMUSIC-SV-Dlna"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " release is completed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public selectDlnaDms(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectDlnaDms status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->isDlnaServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
