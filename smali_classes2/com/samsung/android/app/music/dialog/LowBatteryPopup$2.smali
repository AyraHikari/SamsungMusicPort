.class Lcom/samsung/android/app/music/dialog/LowBatteryPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$2;->a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
