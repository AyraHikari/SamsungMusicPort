.class final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LockPlayerDisplayManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$DisplayListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-LockPlayer"

.field private static final TAG:Ljava/lang/String; = "LockPlayer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$DisplayListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$DisplayListener;)V
    .locals 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->mContext:Landroid/content/Context;

    const-string v0, "display"

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 156
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$DisplayListener;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;)Landroid/content/Context;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$DisplayListener;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$DisplayListener;

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method
