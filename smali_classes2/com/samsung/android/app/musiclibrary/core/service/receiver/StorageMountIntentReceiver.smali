.class public Lcom/samsung/android/app/musiclibrary/core/service/receiver/StorageMountIntentReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;


# static fields
.field private static final ACTIONS:[Ljava/lang/String;

.field private static final DATA_SCHEME_FILE:Ljava/lang/String; = "file"


# instance fields
.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    const-string v2, "android.intent.action.MEDIA_EJECT"

    const-string v3, "android.intent.action.MEDIA_UNMOUNTABLE"

    const-string v4, "android.intent.action.MEDIA_REMOVED"

    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/StorageMountIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/StorageMountIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-void
.end method

.method private isUnmountedAction(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.intent.action.MEDIA_EJECT"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.MEDIA_REMOVED"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public getDataScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "file"

    return-object v0
.end method

.method public getSupportedActions()[Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/StorageMountIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/StorageMountIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->mediaMounted(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/StorageMountIntentReceiver;->isUnmountedAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/StorageMountIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->mediaUnmounted(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method
