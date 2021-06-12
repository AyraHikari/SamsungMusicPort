.class Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;
.super Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;)Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;->a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;)Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;)Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;->c()Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;)Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;->a:Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;

    return-object p0
.end method


# virtual methods
.method protected synthetic a()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;->c()Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;->d()Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;->d()Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public d()Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 271
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$1;)V

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;->c()Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
