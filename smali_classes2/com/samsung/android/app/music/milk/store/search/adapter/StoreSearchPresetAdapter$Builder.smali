.class public Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method

.method public b()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;
    .locals 1

    .line 212
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;->a()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
