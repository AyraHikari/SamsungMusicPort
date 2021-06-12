.class Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$2;
.super Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$2;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;

    invoke-direct {p0}, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$2;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->access$000(Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;->onStateChanged(II)V

    return-void
.end method
