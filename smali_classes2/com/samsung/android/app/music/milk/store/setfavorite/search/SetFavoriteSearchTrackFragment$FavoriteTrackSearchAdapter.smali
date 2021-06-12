.class Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;
.super Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FavoriteTrackSearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter$FavoriteTrackSearchBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)V

    return-void
.end method


# virtual methods
.method protected c(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V
    .locals 3

    .line 154
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;->c()Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 157
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 160
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 146
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;->c(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$ViewHolder;I)V

    return-void
.end method
