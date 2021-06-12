.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$addAccessibilityAction$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;ILjava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$addAccessibilityAction$1;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$addAccessibilityAction$1;->b:I

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$addAccessibilityAction$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 111
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-eqz p2, :cond_0

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$addAccessibilityAction$1;->a:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 113
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$addAccessibilityAction$1;->b:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$addAccessibilityAction$1;->c:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method
