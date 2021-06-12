.class public final Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$Companion;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/SearchView$OnQueryTextListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/support/v7/widget/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->b:Ljava/util/ArrayList;

    .line 19
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->search:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    .line 20
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$$special$$inlined$apply$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;Landroid/app/Activity;)V

    check-cast v1, Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 33
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/app/SearchManager;

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    const/4 p1, 0x0

    .line 35
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 36
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getImeOptions()I

    move-result v1

    or-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    const-string v1, "this"

    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->a(Landroid/support/v7/widget/SearchView;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 41
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 42
    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->max_char_reached_msg:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v7, 0x100

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, p1

    .line 41
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 39
    invoke-static {v2, v3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 48
    new-array v3, v5, [Landroid/text/InputFilter;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$searchView$1$2$1;

    invoke-direct {v4, v2, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$searchView$1$2$1;-><init>(Landroid/widget/Toast;I)V

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 19
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->c:Landroid/support/v7/widget/SearchView;

    return-void

    .line 33
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.SearchManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Landroid/support/v7/widget/SearchView;)Landroid/widget/EditText;
    .locals 3

    .line 65
    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "searchView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android:id/search_src_text"

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    return-object p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;)Ljava/util/ArrayList;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->b:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/SearchView;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->c:Landroid/support/v7/widget/SearchView;

    const-string v1, "searchView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;->c:Landroid/support/v7/widget/SearchView;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method
