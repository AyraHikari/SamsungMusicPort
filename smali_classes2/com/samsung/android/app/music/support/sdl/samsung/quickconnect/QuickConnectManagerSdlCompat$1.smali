.class Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->access$000(Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->access$000(Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;->onItemSelected()V

    return-void
.end method
