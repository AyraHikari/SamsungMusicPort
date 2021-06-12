.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$defaultConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$defaultConnection$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$defaultConnection$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->access$setConnected$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;Z)V

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$defaultConnection$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->access$registerPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;)V

    .line 31
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$defaultConnection$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;

    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getPlayers()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->initialize(Ljava/util/List;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$defaultConnection$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->access$setConnected$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;Z)V

    return-void
.end method
