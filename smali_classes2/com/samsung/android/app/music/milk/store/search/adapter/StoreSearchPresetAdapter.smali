.class public Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "2"

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->a:I

    const-string v0, "2"

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    sput v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->b:I

    const-string v0, "2"

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    sput v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 77
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 25
    sget v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->a:I

    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->d:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method

.method static synthetic b()I
    .locals 1

    .line 25
    sget v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->b:I

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method private b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;I)V
    .locals 2

    .line 123
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    const-string v0, "title"

    .line 124
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    if-eqz p2, :cond_0

    .line 127
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0b03f4

    .line 129
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic c()I
    .locals 1

    .line 25
    sget v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->c:I

    return v0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;
    .locals 2

    if-nez p3, :cond_2

    const p3, 0x7f0400ee

    const/16 v0, -0x12c

    if-ne p2, v0, :cond_0

    const p3, 0x7f0400f3

    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->FOOTER:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->getViewType()I

    move-result v0

    if-ne p2, v0, :cond_1

    const p3, 0x7f0400ec

    .line 107
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, p3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 110
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;I)V
    .locals 2

    .line 115
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 116
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, -0x12c

    if-ne v0, v1, :cond_0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, -0x12c

    if-ne v0, v1, :cond_0

    int-to-long v0, v0

    return-wide v0

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
