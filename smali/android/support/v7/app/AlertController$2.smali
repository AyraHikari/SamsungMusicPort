.class Landroid/support/v7/app/AlertController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AlertController;

.field final synthetic val$bottom:Landroid/view/View;

.field final synthetic val$top:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 601
    iput-object p1, p0, Landroid/support/v7/app/AlertController$2;->this$0:Landroid/support/v7/app/AlertController;

    iput-object p2, p0, Landroid/support/v7/app/AlertController$2;->val$top:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/app/AlertController$2;->val$bottom:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 0

    .line 606
    iget-object p2, p0, Landroid/support/v7/app/AlertController$2;->val$top:Landroid/view/View;

    iget-object p3, p0, Landroid/support/v7/app/AlertController$2;->val$bottom:Landroid/view/View;

    invoke-static {p1, p2, p3}, Landroid/support/v7/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
