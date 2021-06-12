.class Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 316
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f13015f

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method a()Landroid/widget/TextView;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;->a:Landroid/widget/TextView;

    return-object v0
.end method
