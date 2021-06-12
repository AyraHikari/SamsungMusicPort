.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setVisibility$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;IJLandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setVisibility$1;->a:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setVisibility$1;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setVisibility$1;->a:Landroid/view/View;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setVisibility$1;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
