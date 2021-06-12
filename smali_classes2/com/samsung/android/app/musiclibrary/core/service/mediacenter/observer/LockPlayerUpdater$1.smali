.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$LockPlayerDisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/LockPlayerUpdater;)V

    :cond_0
    return-void
.end method
