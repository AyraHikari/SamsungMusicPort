.class public final Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/b;
.source "SetAsItemLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$a;
    }
.end annotation


# instance fields
.field public c:Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getOnCheckChangedListener()Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->c:Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$a;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/b;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/b;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/b;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/b;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->c:Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$a;->a(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setOnCheckChangedListener(Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->c:Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$a;

    return-void
.end method
