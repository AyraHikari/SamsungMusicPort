.class Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->bindAdapterInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method
