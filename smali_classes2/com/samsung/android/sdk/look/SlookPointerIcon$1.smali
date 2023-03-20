.class Lcom/samsung/android/sdk/look/SlookPointerIcon$1;
.super Ljava/lang/Object;
.source "SlookPointerIcon.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/look/SlookPointerIcon;->setHoverIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/look/SlookPointerIcon;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/look/SlookPointerIcon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon$1;->this$0:Lcom/samsung/android/sdk/look/SlookPointerIcon;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/look/RefPointerIcon;->get()Lcom/samsung/android/sdk/look/RefPointerIcon;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon$1;->this$0:Lcom/samsung/android/sdk/look/SlookPointerIcon;

    invoke-static {p2}, Lcom/samsung/android/sdk/look/SlookPointerIcon;->access$2(Lcom/samsung/android/sdk/look/SlookPointerIcon;)I

    move-result p2

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/look/RefPointerIcon;->setHoveringSpenIcon(II)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/look/RefPointerIcon;->get()Lcom/samsung/android/sdk/look/RefPointerIcon;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon$1;->this$0:Lcom/samsung/android/sdk/look/SlookPointerIcon;

    invoke-static {p2}, Lcom/samsung/android/sdk/look/SlookPointerIcon;->access$0(Lcom/samsung/android/sdk/look/SlookPointerIcon;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon$1;->this$0:Lcom/samsung/android/sdk/look/SlookPointerIcon;

    invoke-static {v0}, Lcom/samsung/android/sdk/look/SlookPointerIcon;->access$1(Lcom/samsung/android/sdk/look/SlookPointerIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/look/RefPointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
