.class final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$MyFavoriteViewHolder;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;->b:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;->b:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    .line 116
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;->b:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "v"

    .line 117
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->b(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->c(I)I

    move-result v0

    const-string v3, "context"

    .line 119
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 120
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter$onBindViewHolder$3;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->c(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)I

    move-result v4

    .line 121
    new-array v2, v2, [Ljava/lang/Object;

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 119
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
