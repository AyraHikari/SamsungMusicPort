.class Landroid/support/v7/widget/SuggestionsAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private final mCommitIconResId:I

.field private mDefaultSpannableColor:I

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private final mSearchManager:Landroid/app/SearchManager;

.field private final mSearchView:Landroid/support/v7/widget/SearchView;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private mSpannableTextColor:I

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p2}, Landroid/support/v7/widget/SearchView;->getSuggestionRowLayout()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mClosed:Z

    .line 79
    iput v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    const/4 v2, -0x1

    .line 87
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText1Col:I

    .line 88
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2Col:I

    .line 89
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 90
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 91
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 92
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mFlagsCol:I

    const v2, -0xff5f32

    .line 98
    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mDefaultSpannableColor:I

    .line 99
    iget v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mDefaultSpannableColor:I

    iput v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSpannableTextColor:I

    .line 108
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 109
    new-array v1, v1, [I

    const v3, 0x1010434

    aput v3, v1, v0

    .line 110
    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 111
    iget v2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mDefaultSpannableColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSpannableTextColor:I

    .line 112
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    .line 116
    iput-object p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 117
    iput-object p3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 118
    invoke-virtual {p2}, Landroid/support/v7/widget/SearchView;->getSuggestionCommitIconResId()I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mCommitIconResId:I

    .line 121
    iput-object p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 123
    iput-object p4, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 679
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 684
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 435
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->textColorSearchUrl:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 436
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 439
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 440
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x0

    .line 441
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v2, 0x21

    .line 440
    invoke-virtual {v0, v7, v1, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 743
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 746
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    .line 753
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 754
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4, v3, v1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SuggestionsAdapter"

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid icon resource "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 756
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "SuggestionsAdapter"

    .line 748
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 721
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 723
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 724
    iget-object p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez p1, :cond_0

    goto :goto_0

    .line 725
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    return-object v2

    .line 728
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 730
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 731
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 772
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 773
    invoke-static {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 702
    iget-object p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 708
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    .line 646
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.resource"

    .line 647
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v1, :cond_0

    .line 650
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    return-object v1

    .line 652
    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v1, :cond_1

    .line 661
    :try_start_3
    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 664
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_5
    const-string v3, "SuggestionsAdapter"

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing icon stream for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_0
    return-object v2

    :catchall_0
    move-exception v2

    .line 664
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_7
    const-string v3, "SuggestionsAdapter"

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing icon stream for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    :goto_1
    throw v2

    .line 658
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v1

    const-string v2, "SuggestionsAdapter"

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 608
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 611
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    .line 618
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 620
    invoke-direct {p0, v2, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "SuggestionsAdapter"

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icon resource not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    nop

    .line 624
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 628
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 629
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 630
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 458
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName1Col:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 461
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName1Col:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 466
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 470
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName2Col:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 473
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName2Col:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 474
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private static getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/String;[C)[C
    .locals 0

    .line 292
    invoke-static {p0, p1, p2}, Landroid/support/v4/text/SeslTextUtilsReflector;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object p0

    return-object p0
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 781
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SuggestionsAdapter"

    const-string v1, "unexpected error retrieving valid column from cursor, did the remote process die?"

    .line 783
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 484
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_0

    .line 487
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 489
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    invoke-virtual {p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 p1, 0x1

    .line 497
    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_0
    return-void
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 448
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 451
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 453
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 689
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 213
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "in_progress"

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    .line 300
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 301
    iget-object v3, v0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 307
    iget v5, v0, Landroid/support/v7/widget/SuggestionsAdapter;->mFlagsCol:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 308
    iget v5, v0, Landroid/support/v7/widget/SuggestionsAdapter;->mFlagsCol:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 310
    :goto_0
    iget-object v8, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    const/16 v9, 0x21

    const/4 v10, 0x0

    if-eqz v8, :cond_6

    .line 311
    iget v8, v0, Landroid/support/v7/widget/SuggestionsAdapter;->mText1Col:I

    invoke-static {v1, v8}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    if-nez v4, :cond_1

    const/4 v11, -0x1

    goto :goto_1

    .line 320
    :cond_1
    iget-object v11, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-static {v11, v8, v12}, Landroid/support/v7/widget/SuggestionsAdapter;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/String;[C)[C

    move-result-object v11

    if-eqz v11, :cond_2

    .line 323
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v11}, Ljava/lang/String;-><init>([C)V

    .line 324
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 325
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    .line 327
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    :goto_1
    const-string v12, "SuggestionsAdapter"

    .line 330
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " queryIndex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "SuggestionsAdapter"

    .line 331
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " queryLength = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v11, v7, :cond_3

    if-lez v4, :cond_3

    .line 333
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 334
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    iget v14, v0, Landroid/support/v7/widget/SuggestionsAdapter;->mSpannableTextColor:I

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v14, v11, v4

    invoke-virtual {v12, v13, v11, v14, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    move-object v12, v10

    :goto_2
    const-string v11, "SuggestionsAdapter"

    .line 336
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " matchText1 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v11, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    move-object v12, v8

    :goto_3
    invoke-direct {v0, v11, v12}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 339
    :cond_5
    iget-object v11, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-direct {v0, v11, v8}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 343
    :cond_6
    :goto_4
    iget-object v8, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/4 v13, 0x1

    if-eqz v8, :cond_11

    .line 345
    iget v8, v0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2UrlCol:I

    invoke-static {v1, v8}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 347
    invoke-direct {v0, v8}, Landroid/support/v7/widget/SuggestionsAdapter;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v14, 0x1

    goto :goto_5

    .line 350
    :cond_7
    iget v8, v0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2Col:I

    invoke-static {v1, v8}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    .line 355
    :goto_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 356
    iget-object v15, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v15, :cond_9

    .line 357
    iget-object v15, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 358
    iget-object v15, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_6

    .line 361
    :cond_8
    iget-object v15, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v15, :cond_9

    .line 362
    iget-object v15, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 363
    iget-object v15, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_9
    :goto_6
    if-nez v14, :cond_10

    .line 370
    iget v8, v0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2Col:I

    invoke-static {v1, v8}, Landroid/support/v7/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    if-nez v4, :cond_b

    :cond_a
    const/4 v3, -0x1

    goto :goto_7

    :cond_b
    if-eqz v8, :cond_a

    .line 376
    iget-object v14, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    invoke-static {v14, v8, v15}, Landroid/support/v7/widget/SuggestionsAdapter;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/String;[C)[C

    move-result-object v14

    if-eqz v14, :cond_c

    .line 378
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v14}, Ljava/lang/String;-><init>([C)V

    .line 379
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 380
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto :goto_7

    .line 382
    :cond_c
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :goto_7
    if-eq v3, v7, :cond_d

    if-lez v4, :cond_d

    if-eqz v8, :cond_d

    .line 387
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 388
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget v14, v0, Landroid/support/v7/widget/SuggestionsAdapter;->mSpannableTextColor:I

    invoke-direct {v7, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v4, v3

    invoke-virtual {v10, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    if-eqz v10, :cond_e

    .line 391
    iget-object v3, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {v0, v3, v10}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_e
    if-eqz v8, :cond_f

    .line 394
    iget-object v3, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {v0, v3, v8}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 396
    :cond_f
    iget-object v3, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 400
    :cond_10
    iget-object v3, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {v0, v3, v8}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 404
    :cond_11
    :goto_8
    iget-object v3, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v3, :cond_12

    .line 405
    iget-object v3, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v3, v4, v12}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 407
    :cond_12
    iget-object v3, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    if-eqz v3, :cond_13

    .line 408
    iget-object v3, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v3, v1, v12}, Landroid/support/v7/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 410
    :cond_13
    iget v1, v0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-eq v1, v11, :cond_15

    iget v1, v0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-ne v1, v13, :cond_14

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_14

    goto :goto_9

    .line 419
    :cond_14
    iget-object v1, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 413
    :cond_15
    :goto_9
    iget-object v1, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    iget-object v1, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v1, :cond_16

    .line 415
    iget-object v1, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    iget-object v3, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 417
    :cond_16
    iget-object v1, v2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    .line 235
    iget-boolean v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mClosed:Z

    if-eqz v0, :cond_1

    const-string v0, "SuggestionsAdapter"

    const-string v1, "Tried to change cursor after adapter was closed."

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 237
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 242
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    if-eqz p1, :cond_2

    const-string v0, "suggest_text_1"

    .line 245
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText1Col:I

    const-string v0, "suggest_text_2"

    .line 246
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2Col:I

    const-string v0, "suggest_text_2_url"

    .line 247
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mText2UrlCol:I

    const-string v0, "suggest_icon_1"

    .line 248
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName1Col:I

    const-string v0, "suggest_icon_2"

    .line 249
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mIconName2Col:I

    const-string v0, "suggest_flags"

    .line 250
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SuggestionsAdapter"

    const-string v1, "error changing cursor and caching columns"

    .line 253
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mClosed:Z

    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "suggest_intent_query"

    .line 515
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 520
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "suggest_intent_data"

    .line 521
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 527
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "suggest_text_1"

    .line 528
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    return-object v0
.end method

.method getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 795
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 801
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 806
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 810
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 814
    :try_start_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 816
    :catch_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Single path segment is not a resource ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 819
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 826
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 824
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No resource found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than two path segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :catch_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package found for authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 569
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "SuggestionsAdapter"

    const-string v0, "Search suggestions cursor threw exception."

    .line 571
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    iget-object p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 575
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    .line 576
    iget-object p3, p3, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 577
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method

.method public getQueryRefinement()I
    .locals 1

    .line 144
    iget v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    return v0
.end method

.method getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 837
    :cond_0
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 842
    :cond_1
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 843
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 844
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    .line 845
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    .line 846
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 849
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 851
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    const-string v2, "search_suggest_query"

    .line 855
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 858
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 p1, 0x1

    .line 862
    new-array v0, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v0, p1

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 864
    :cond_3
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :goto_1
    if-lez p3, :cond_4

    const-string p1, "limit"

    .line 868
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 871
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 874
    iget-object p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 546
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "SuggestionsAdapter"

    const-string v0, "Search suggestions cursor threw exception."

    .line 548
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    iget-object p2, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, p3}, Landroid/support/v7/widget/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 552
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    .line 553
    iget-object p3, p3, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 554
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 262
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 263
    new-instance p2, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;

    invoke-direct {p2, p1}, Landroid/support/v7/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 266
    sget p2, Landroid/support/v7/appcompat/R$id;->edit_query:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 267
    iget p3, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mCommitIconResId:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 199
    invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 201
    invoke-virtual {p0}, Landroid/support/v7/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .line 207
    invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 426
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 164
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 171
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 175
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    const/16 v2, 0x32

    invoke-virtual {p0, v0, p1, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "SuggestionsAdapter"

    const-string v2, "Search suggestions query threw an exception."

    .line 183
    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public setQueryRefinement(I)V
    .locals 0

    .line 136
    iput p1, p0, Landroid/support/v7/widget/SuggestionsAdapter;->mQueryRefinement:I

    return-void
.end method
