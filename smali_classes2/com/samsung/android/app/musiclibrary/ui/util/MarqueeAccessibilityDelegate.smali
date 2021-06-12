.class public Lcom/samsung/android/app/musiclibrary/ui/util/MarqueeAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 14
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 21
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 23
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x10000

    .line 24
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    :cond_0
    return-void
.end method
