.class Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$1;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "VerticalScrollTabLayout"

    const-string p2, "applyTransformation. view is null."

    .line 133
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const p2, 0x7f13015f

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$1;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;Landroid/view/View;)Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$1;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$1;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
