.class Landroid/support/v4/widget/SwipeRefreshLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/CircularProgressDrawable$OnAnimationEndCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshOnce(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 431
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$2;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAnimationEnd()V
    .locals 2

    .line 434
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$2;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const-string v0, "SeslSwipeRefreshLayout"

    const-string v1, "OnAnimationEnd"

    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
