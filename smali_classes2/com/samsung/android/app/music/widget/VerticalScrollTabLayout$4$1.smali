.class Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4$1;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4$1;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;

    iget-object v0, v0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->e(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4$1;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;

    iget-object v1, v1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    .line 248
    invoke-static {v1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->e(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    .line 247
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->a(IF)V

    return-void
.end method
