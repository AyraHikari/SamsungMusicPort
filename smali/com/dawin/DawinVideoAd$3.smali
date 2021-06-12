.class Lcom/dawin/DawinVideoAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/DawinVideoAd;


# direct methods
.method constructor <init>(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/DawinVideoAd$3;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$3;->a:Lcom/dawin/DawinVideoAd;

    invoke-virtual {p1}, Lcom/dawin/DawinVideoAd;->onResume()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
