.class final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfoViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thumbnail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artistName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumInfo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->a:Landroid/view/View;

    return-object v0
.end method

.method public final b()Landroid/widget/ImageView;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->a:Landroid/view/View;

    iget-object v1, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->b:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->c:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->d:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->e:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->e:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->a:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->b:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InfoViewHolder(rootView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", artistName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", albumInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
