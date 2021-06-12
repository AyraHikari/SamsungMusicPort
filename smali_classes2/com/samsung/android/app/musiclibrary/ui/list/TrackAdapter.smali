.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "TVH;>;"
    }
.end annotation


# static fields
.field static final synthetic h:[Lkotlin/reflect/KProperty;

.field public static final i:Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$Companion;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private j:I

.field private k:Z

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/Lazy;

.field private final n:Lkotlin/Lazy;

.field private o:J

.field private p:I

.field private final q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

.field private final t:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "primaryColor"

    const-string v4, "getPrimaryColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "thumbnailTagBgColor"

    const-string v4, "getThumbnailTagBgColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "ttsTitleNowPlayingText"

    const-string v4, "getTtsTitleNowPlayingText()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->h:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->i:Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->c:I

    .line 36
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->d:I

    .line 37
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e:I

    .line 38
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->f:I

    .line 39
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->g:I

    .line 40
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->j:I

    .line 44
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$primaryColor$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$primaryColor$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->l:Lkotlin/Lazy;

    .line 48
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$thumbnailTagBgColor$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$thumbnailTagBgColor$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->m:Lkotlin/Lazy;

    .line 52
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ttsTitleNowPlayingText$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ttsTitleNowPlayingText$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->n:Lkotlin/Lazy;

    .line 65
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->t:Landroid/util/LongSparseArray;

    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->k:Z

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->k()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->q:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;->l()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->r:Landroid/util/SparseArray;

    return-void
.end method

.method private final a()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->m:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->h:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->f()Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 206
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->cpAttrsColIndex:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 207
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCpAttrs(I)I

    move-result p2

    .line 208
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->q:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->f()Landroid/widget/TextView;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->f()Landroid/widget/TextView;

    move-result-object p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->f()Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->n:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->h:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->e()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 225
    sget-boolean p2, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p2, :cond_3

    .line 227
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->d:I

    if-eq p2, v1, :cond_0

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->d:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 230
    :goto_0
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 233
    :goto_1
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->f:I

    if-eq v3, v1, :cond_2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->f:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 236
    :goto_2
    invoke-static {p2, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(IILjava/lang/String;)J

    move-result-wide v2

    .line 238
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->e()Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p2, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(Landroid/widget/TextView;J)Z

    move-result p2

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    if-nez p2, :cond_6

    .line 241
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->j:I

    if-eq v2, v1, :cond_6

    .line 242
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->j:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    .line 243
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->r:Landroid/util/SparseArray;

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_5

    .line 245
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->e()Landroid/widget/TextView;

    move-result-object p2

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 248
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->e()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a()I

    move-result v1

    .line 250
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 248
    invoke-virtual {p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 254
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->e()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_8
    return-void
.end method

.method private final b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 5

    .line 143
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->g:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/16 v0, 0x3e8

    .line 151
    rem-int/2addr p2, v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string v2, "-"

    goto :goto_0

    .line 155
    :cond_0
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "fragment.resources"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-lt p2, v0, :cond_2

    .line 161
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->d()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 163
    :cond_1
    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_numbering_very_small:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 161
    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x64

    if-lt p2, v0, :cond_4

    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->d()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 169
    :cond_3
    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_numbering_small:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 167
    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_4
    const/16 v0, 0xa

    if-lt p2, v0, :cond_6

    .line 173
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->d()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 175
    :cond_5
    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_numbering_normal:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 173
    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 179
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->d()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 181
    :cond_7
    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_numbering_large:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 179
    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 185
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->d()Landroid/widget/TextView;

    move-result-object p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V
    .locals 2

    .line 259
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->h()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_7

    .line 261
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->h()Landroid/widget/ImageView;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->p:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 263
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->h()Landroid/widget/ImageView;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->sound_picker_ic_pause:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->h()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_playing:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->h()Landroid/widget/ImageView;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->sound_picker_ic_play:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->h()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_paused:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 272
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->h()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final c(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 4

    .line 189
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->k:Z

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->h()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->thumbnail_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->a(Landroid/widget/ImageView;)V

    .line 194
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->c:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 195
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->o:J

    cmp-long p2, v2, v0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)J
    .locals 4

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    int-to-long v1, v0

    .line 340
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->c:I

    if-eq v3, v0, :cond_0

    .line 341
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method protected final a(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->o:J

    return-void
.end method

.method protected a(JI)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->t:Landroid/util/LongSparseArray;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method protected a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->j()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    .line 479
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Landroid/database/Cursor;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(JI)V

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->c:I

    if-eq v1, v2, :cond_1

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->d()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->g:I

    if-eq v1, v2, :cond_2

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->c:I

    if-eq v1, v2, :cond_3

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->c(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V

    .line 116
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->e()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;ILandroid/database/Cursor;)V

    .line 120
    :cond_4
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;ILandroid/database/Cursor;)V

    return-void
.end method

.method protected a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Landroid/database/Cursor;)J

    move-result-wide v0

    const/4 p2, -0x1

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 130
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->o:J

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    .line 134
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->getContentDescription$musicLibrary_release()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    .line 138
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "holder.itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected final a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    if-eqz p2, :cond_2

    .line 281
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 282
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    .line 283
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 284
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_0
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->p:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 287
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->g()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setColor(I)V

    .line 288
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setVisibility(I)V

    .line 289
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->a()V

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->g()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setColor(I)V

    .line 292
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setVisibility(I)V

    .line 293
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->b()V

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->c()V

    .line 299
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->g()Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final b(J)V
    .locals 6

    const-string v0, "UiList"

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " updatePlayingAudioId() audioId=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->o:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->t:Landroid/util/LongSparseArray;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->o:J

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 360
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->t:Landroid/util/LongSparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 362
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->o:J

    cmp-long v2, v4, p1

    if-eqz v2, :cond_0

    .line 363
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->o:J

    const/4 p1, 0x0

    .line 364
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->p:I

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    const-string p2, "recyclerViewableList.recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result p1

    if-nez p1, :cond_4

    if-nez v0, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_2

    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$updatePlayingAudioId$1;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$updatePlayingAudioId$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Ljava/lang/Integer;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    .line 369
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_4

    :goto_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$updatePlayingAudioId$2;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$updatePlayingAudioId$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Ljava/lang/Integer;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V

    :cond_4
    return-void
.end method

.method protected final b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;->j()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    .line 481
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;

    .line 313
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(I)J
    .locals 4

    const/4 v0, -0x1

    int-to-long v1, v0

    .line 348
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 349
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->c:I

    if-eq v3, v0, :cond_0

    .line 350
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method protected final f()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->g:I

    return v0
.end method

.method protected final g()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->l:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->h:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method protected final h()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->o:J

    return-wide v0
.end method

.method protected final h(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->c:I

    return-void
.end method

.method public final i(I)V
    .locals 4

    const-string v0, "UiList"

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " updatePlaybackState() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->p:I

    if-ne v0, p1, :cond_0

    return-void

    .line 377
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->p:I

    .line 378
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    const-string v0, "recyclerViewableList.recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result p1

    if-nez p1, :cond_2

    .line 379
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->t:Landroid/util/LongSparseArray;

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->o:J

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_2

    :goto_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$updatePlaybackState$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$updatePlaybackState$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Ljava/lang/Integer;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V

    :cond_2
    return-void
.end method

.method public final i()[J
    .locals 8

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCount()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getHeaderViewCount()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getFooterViewCount()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v1, v1, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 73
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 75
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "newCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->c:I

    .line 321
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "sampling_rate"

    .line 322
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->d:I

    const-string v0, "bit_depth"

    .line 323
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e:I

    const-string v0, "mime_type"

    .line 324
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->f:I

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->g:I

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->r:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    const-string v0, "drm_type"

    .line 330
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->j:I

    :cond_3
    return-void
.end method

.method public final j()I
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->t:Landroid/util/LongSparseArray;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->o:J

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "positionMap.get(playingAudioId, UNDEFINED)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    const-string v1, "recyclerViewableList.recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->t:Landroid/util/LongSparseArray;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->o:J

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_1

    :goto_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$startEqualizerAnimation$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$startEqualizerAnimation$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Ljava/lang/Integer;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->c()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->t:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    return-object p1
.end method
