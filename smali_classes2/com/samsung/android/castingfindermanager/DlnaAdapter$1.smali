.class Lcom/samsung/android/castingfindermanager/DlnaAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/castingfindermanager/DlnaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/castingfindermanager/DlnaAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$1;->a:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 0

    .line 253
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$1;->a:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 0

    .line 249
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$1;->a:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    move-result-object p1

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->a(ILjava/lang/Object;)V

    return-void
.end method
