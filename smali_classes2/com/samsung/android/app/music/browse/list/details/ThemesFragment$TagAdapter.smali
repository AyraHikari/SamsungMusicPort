.class Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;
.super Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;,
        Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;)V
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;)V

    .line 233
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;->a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;)Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;->b:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$1;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 243
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;->a:I

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;->notifyDataSetChanged()V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;->b:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;->b:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V
    .locals 1

    .line 238
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    .line 239
    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;->a:I

    if-ne v0, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 226
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 226
    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;->a(Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$ViewHolder;I)V

    return-void
.end method
