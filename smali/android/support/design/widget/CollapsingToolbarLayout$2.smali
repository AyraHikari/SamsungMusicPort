.class Landroid/support/design/widget/CollapsingToolbarLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

.field final synthetic val$toolbar_height:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;I)V
    .locals 0

    .line 748
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$2;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$2;->val$toolbar_height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 751
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$2;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$2;->val$toolbar_height:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    return-void
.end method
