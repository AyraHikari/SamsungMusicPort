.class public final Lcom/samsung/android/app/music/list/local/HeartAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private final g:Lkotlin/Lazy;

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "predefinedViews"

    const-string v4, "getPredefinedViews()Landroid/util/SparseArray;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 850
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->b:Ljava/lang/String;

    .line 851
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->c:Ljava/lang/String;

    const/4 p1, -0x1

    .line 852
    iput p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->d:I

    .line 853
    iput p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->e:I

    .line 854
    iput p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->f:I

    .line 856
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/samsung/android/app/music/list/local/HeartAdapter$predefinedViews$2;->INSTANCE:Lcom/samsung/android/app/music/list/local/HeartAdapter$predefinedViews$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->g:Lkotlin/Lazy;

    .line 858
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/HeartFragmentKt;->a(Lcom/samsung/android/app/music/network/NetworkManager;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 859
    :goto_0
    iput p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->h:I

    .line 860
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->i:Z

    return-void
.end method

.method private final a()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method private final a(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0d0004

    if-le p3, p2, :cond_0

    .line 1024
    new-array p3, v1, [Ljava/lang/Object;

    .line 1025
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1022
    invoke-virtual {p1, v2, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "resources.getQuantityStr\u2026  baseCount\n            )"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 1026
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lkotlin/text/Regex;

    invoke-direct {v0, p3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2b

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1028
    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, v2, p3, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getQuantityStr\u2026ck, realCount, realCount)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/list/local/HeartAdapter;IZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1052
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    const-string v2, "UiList"

    .line 879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onCreateViewHolder() predefinedView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " remove parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 877
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    if-eqz v0, :cond_3

    move-object p3, v0

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_2

    .line 885
    :cond_4
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    const-string v0, "fragment.activity!!"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/app/Activity;

    const v0, 0x7f040178

    const/4 v1, 0x0

    invoke-static {p3, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 886
    :goto_2
    new-instance p1, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/HeartAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public final a(IZ)Ljava/lang/String;
    .locals 5

    .line 1053
    iget v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->text2Index:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 1055
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->text2Index:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1056
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const v4, 0x10004

    if-eq v3, v4, :cond_5

    const v4, 0x10007

    if-eq v3, v4, :cond_3

    if-eqz p2, :cond_7

    .line 1071
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1066
    :cond_3
    iget p2, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->e:I

    if-eq p2, v2, :cond_7

    .line 1067
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p2, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->e:I

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1068
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->context:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1058
    :cond_5
    iget p2, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->keywordIndex:I

    if-eq p2, v2, :cond_7

    .line 1059
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 1060
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/ListUtils;->a(J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1061
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/ListUtils;->b(J)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 858
    iput p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->h:I

    return-void
.end method

.method public final a(ILandroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 892
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemViewType(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 894
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getText1(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x66

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 897
    :cond_2
    :pswitch_0
    iget p2, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->h:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-boolean p2, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->i:Z

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const p2, 0x3ebd70a4    # 0.37f

    .line 901
    :goto_1
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 0

    .line 860
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->i:Z

    return-void
.end method

.method public final b(I)I
    .locals 2

    .line 1077
    iget v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 1079
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_1
    return v1
.end method

.method protected b(Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;I)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v5, p2

    const-string v0, "holder"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    invoke-virtual {v9, v5}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v11

    .line 907
    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v13, -0x1

    iput v13, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 908
    invoke-virtual {v9, v5}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v7

    .line 910
    iget v0, v9, Lcom/samsung/android/app/music/list/local/HeartAdapter;->text1Index:I

    const/16 v1, 0x8

    const/16 v2, 0x66

    const/4 v3, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v0, v13, :cond_2

    .line 911
    iget v0, v9, Lcom/samsung/android/app/music/list/local/HeartAdapter;->text1Index:I

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 913
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;->b()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 914
    iget v4, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v4, v2, :cond_0

    packed-switch v4, :pswitch_data_0

    const-wide/16 v16, -0xb

    .line 918
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v14

    if-eqz v4, :cond_0

    .line 919
    iget v4, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultListUtils;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :pswitch_0
    const v4, 0x7f0b0238

    .line 916
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    const v4, 0x7f0b0239

    .line 915
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    .line 921
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 922
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 923
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 924
    :cond_1
    move-object v4, v9

    check-cast v4, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    .line 925
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 930
    :cond_2
    :goto_1
    iget v0, v9, Lcom/samsung/android/app/music/list/local/HeartAdapter;->text2Index:I

    if-eq v0, v13, :cond_6

    .line 931
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;->d()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;->c()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 934
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x2

    .line 935
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 936
    invoke-static {v9, v5, v15, v0, v3}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(Lcom/samsung/android/app/music/list/local/HeartAdapter;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 939
    iget v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v0, v2, :cond_5

    if-nez v7, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-static {v7}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 941
    move-object v1, v4

    check-cast v1, Landroid/view/View;

    .line 1754
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    .line 1755
    new-instance v16, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;

    move-object/from16 v0, v16

    move-object v2, v8

    move-object v3, v4

    move-object/from16 v4, p0

    move/from16 v5, p2

    move-object v6, v12

    move-object v15, v8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Landroid/widget/TextView;Lcom/samsung/android/app/music/list/local/HeartAdapter;ILkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;)V

    move-object/from16 v0, v16

    check-cast v0, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v15, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 961
    :cond_6
    iget v0, v9, Lcom/samsung/android/app/music/list/local/HeartAdapter;->d:I

    if-eq v0, v13, :cond_9

    .line 962
    iget-object v0, v10, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 963
    iget v1, v9, Lcom/samsung/android/app/music/list/local/HeartAdapter;->d:I

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 964
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 965
    iget v3, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/high16 v4, 0x7f0d0000

    const/16 v5, 0x64

    const v6, 0x7f0d0004

    sparse-switch v3, :sswitch_data_0

    const-string v3, "data1"

    .line 1007
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1009
    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v6, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :sswitch_0
    :try_start_0
    const-string v3, "data1"

    .line 983
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 984
    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-virtual {v2, v6, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 987
    :catch_0
    iget-object v2, v9, Lcom/samsung/android/app/music/list/local/HeartAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 982
    :goto_3
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 967
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    iget v5, v9, Lcom/samsung/android/app/music/list/local/HeartAdapter;->e:I

    if-eq v5, v13, :cond_7

    .line 969
    iget v5, v9, Lcom/samsung/android/app/music/list/local/HeartAdapter;->e:I

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 971
    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    invoke-virtual {v2, v4, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 972
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    .line 973
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v4, "data1"

    .line 975
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 977
    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-virtual {v2, v6, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 978
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :sswitch_2
    const-string v3, "resources"

    .line 1004
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data1"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v9, v2, v5, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 991
    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    iget v6, v9, Lcom/samsung/android/app/music/list/local/HeartAdapter;->e:I

    if-eq v6, v13, :cond_8

    .line 993
    iget v6, v9, Lcom/samsung/android/app/music/list/local/HeartAdapter;->e:I

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 995
    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 996
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    .line 997
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v4, "resources"

    .line 999
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "data1"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v9, v2, v5, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_3
        0x55 -> :sswitch_2
        0x66 -> :sswitch_2
        0x10003 -> :sswitch_1
        0x10007 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(I)Ljava/lang/Integer;
    .locals 1

    .line 1083
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "display_order"

    .line 1765
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected c(Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 1034
    iget v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->thumbnailIdIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1035
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_2

    .line 1036
    iget v2, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->text1Index:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->text1Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :cond_0
    const/16 v2, 0x66

    if-eq v3, v2, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 1040
    iget v2, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->cpAttrsColIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 1039
    :cond_1
    :pswitch_0
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$AlbumArt;->a:Landroid/net/Uri;

    goto :goto_0

    .line 1043
    :cond_2
    iget v2, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->cpAttrsColIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p2

    .line 1047
    :goto_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;-><init>(Landroid/widget/ImageView;I)V

    const p1, 0x7f1000b6

    .line 1048
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    .line 1049
    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(I)Z
    .locals 1

    .line 1091
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemViewType(I)I

    move-result p1

    const/16 v0, -0x7d1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch -0x3f1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "newCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 864
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->d:I

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->e:I

    :cond_1
    const-string v0, "sub_category_type"

    .line 867
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter;->f:I

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 848
    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 848
    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 848
    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->b(Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 848
    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->c(Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 848
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
