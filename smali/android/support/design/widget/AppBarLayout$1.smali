.class Landroid/support/design/widget/AppBarLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/AppBarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    .line 270
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$1;->this$0:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0

    .line 274
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$1;->this$0:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/AppBarLayout;->onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
