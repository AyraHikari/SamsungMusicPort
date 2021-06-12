.class Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->registerGestureListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected mGestureManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    .line 46
    invoke-static {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->access$000(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)Lcom/samsung/android/service/gesture/GestureManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->access$102(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;Z)Z

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->access$000(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)Lcom/samsung/android/service/gesture/GestureManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->access$202(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;Z)Z

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->access$300(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->access$102(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;Z)Z

    return-void
.end method
