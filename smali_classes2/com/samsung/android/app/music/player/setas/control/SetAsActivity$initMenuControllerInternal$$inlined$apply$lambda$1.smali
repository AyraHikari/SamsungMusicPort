.class final Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMenuControllerInternal$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMenuControllerInternal$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305e9

    if-eq p1, v0, :cond_1

    const v0, 0x7f1305f2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMenuControllerInternal$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->a(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMenuControllerInternal$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
