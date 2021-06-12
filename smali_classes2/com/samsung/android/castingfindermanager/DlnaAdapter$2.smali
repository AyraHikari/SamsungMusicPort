.class Lcom/samsung/android/castingfindermanager/DlnaAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;


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

    .line 256
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$2;->a:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/samsung/android/allshare/ServiceProvider;Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    .locals 1

    .line 258
    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    if-ne p2, v0, :cond_0

    .line 259
    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$2;->a:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-static {p2}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDeleted(Lcom/samsung/android/allshare/ServiceProvider;)V
    .locals 1

    .line 264
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$2;->a:Lcom/samsung/android/castingfindermanager/DlnaAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->a(I)V

    return-void
.end method
