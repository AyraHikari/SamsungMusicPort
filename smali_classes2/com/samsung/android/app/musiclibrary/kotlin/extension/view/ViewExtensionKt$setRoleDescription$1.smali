.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setRoleDescription$1;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->c(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setRoleDescription$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    if-eqz p2, :cond_0

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setRoleDescription$1;->a:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
