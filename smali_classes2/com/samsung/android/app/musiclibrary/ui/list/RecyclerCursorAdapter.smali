.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "TVH;>;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;"
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;

.field private static final DEBUG:Z

.field private static final DEBUG_DATA_VALIDATION:Z


# instance fields
.field private final buttonBackgroundShowables$delegate:Lkotlin/Lazy;

.field protected final checkBoxAnimatableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

.field protected final checkableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private choiceMode:I

.field protected final context:Landroid/content/Context;

.field private final cpAttrsCol:Ljava/lang/String;

.field protected cpAttrsColIndex:I

.field private cursor:Landroid/database/Cursor;

.field private dataValid:Z

.field private final footerViewTypes$delegate:Lkotlin/Lazy;

.field public final fragment:Landroid/support/v4/app/Fragment;

.field private final headerViewTypes$delegate:Lkotlin/Lazy;

.field private final ignoreParentPaddingChildViews$delegate:Lkotlin/Lazy;

.field private isActionModeEnabled:Z

.field private isDownKeyPerforming:Z

.field protected final isRemoteTrack:Z

.field private final keywordCol:Ljava/lang/String;

.field protected keywordIndex:I

.field private final listItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

.field private onGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private onHeaderItemLayoutChangedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;

.field private onHeaderViewCreatedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;

.field private onItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private onItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

.field private onThumbnailClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private final predefinedHeaderViews$delegate:Lkotlin/Lazy;

.field private final predefinedViewResources$delegate:Lkotlin/Lazy;

.field private final privateModeCol:Ljava/lang/String;

.field protected privateModeColIndex:I

.field protected final recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

.field private final reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

.field protected final reorderableList:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;

.field private final rippleResId:I

.field private rowIDColumn:I

.field private selectorMode:Z

.field private showButtonBackground:Ljava/lang/Boolean;

.field protected final tag:Ljava/lang/String;

.field private final text1Col:Ljava/lang/String;

.field private final text1ColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field protected text1Index:I

.field private final text2Col:Ljava/lang/String;

.field private final text2ColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field protected text2Index:I

.field private final text3Col:Ljava/lang/String;

.field private final text3ColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field protected text3Index:I

.field private final thumbnailFullUriCol:Ljava/lang/String;

.field private thumbnailFullUriIndex:I

.field private final thumbnailIdCol:Ljava/lang/String;

.field protected thumbnailIdIndex:I

.field private final thumbnailSizeResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private final thumbnailUri:Landroid/net/Uri;

.field private final thumbnailUriSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final viewEnablers$delegate:Lkotlin/Lazy;

.field protected final winsetUiEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "headerViewTypes"

    const-string v4, "getHeaderViewTypes()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "footerViewTypes"

    const-string v4, "getFooterViewTypes()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "predefinedHeaderViews"

    const-string v4, "getPredefinedHeaderViews()Landroid/util/SparseArray;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "predefinedViewResources"

    const-string v4, "getPredefinedViewResources()Landroid/util/SparseIntArray;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "viewEnablers"

    const-string v4, "getViewEnablers()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "buttonBackgroundShowables"

    const-string v4, "getButtonBackgroundShowables()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "ignoreParentPaddingChildViews"

    const-string v4, "getIgnoreParentPaddingChildViews()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->Companion:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this.javaClass.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text1Index:I

    .line 120
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text2Index:I

    .line 123
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text3Index:I

    .line 126
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailIdIndex:I

    .line 128
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailFullUriIndex:I

    .line 131
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->privateModeColIndex:I

    .line 134
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->keywordIndex:I

    .line 137
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cpAttrsColIndex:I

    .line 147
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    .line 149
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->choiceMode:I

    .line 151
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$headerViewTypes$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$headerViewTypes$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->headerViewTypes$delegate:Lkotlin/Lazy;

    .line 152
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$footerViewTypes$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$footerViewTypes$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->footerViewTypes$delegate:Lkotlin/Lazy;

    .line 154
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$predefinedHeaderViews$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$predefinedHeaderViews$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->predefinedHeaderViews$delegate:Lkotlin/Lazy;

    .line 155
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$predefinedViewResources$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$predefinedViewResources$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->predefinedViewResources$delegate:Lkotlin/Lazy;

    .line 157
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$viewEnablers$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$viewEnablers$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->viewEnablers$delegate:Lkotlin/Lazy;

    .line 160
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 161
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$buttonBackgroundShowables$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$buttonBackgroundShowables$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 159
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->buttonBackgroundShowables$delegate:Lkotlin/Lazy;

    .line 163
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ignoreParentPaddingChildViews$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ignoreParentPaddingChildViews$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->ignoreParentPaddingChildViews$delegate:Lkotlin/Lazy;

    .line 217
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->fragment:Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-nez v1, :cond_1

    move-object v0, v2

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->checkableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->checkBoxAnimatableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;

    if-nez v1, :cond_3

    move-object v0, v2

    :cond_3
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderableList:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;

    .line 223
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getContext$musicLibrary_release()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->context:Landroid/content/Context;

    .line 224
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getText1Col$musicLibrary_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text1Col:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getText2Col$musicLibrary_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text2Col:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getText3Col$musicLibrary_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text3Col:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getThumbnailId$musicLibrary_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailIdCol:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getThumbnailFullUriCol$musicLibrary_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailFullUriCol:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getRippleResId$musicLibrary_release()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->rippleResId:I

    .line 230
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getKeywordCol$musicLibrary_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->keywordCol:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getCpAttrsCol$musicLibrary_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cpAttrsCol:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getText1ColorResId$musicLibrary_release()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text1ColorResId:I

    .line 234
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getText2ColorResId$musicLibrary_release()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text2ColorResId:I

    .line 235
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getText3ColorResId$musicLibrary_release()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text3ColorResId:I

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->winsetUiEnabled:Z

    .line 240
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getThumbnailUriSet$musicLibrary_release()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailUriSet:Landroid/util/SparseArray;

    .line 241
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getThumbnailUri$musicLibrary_release()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "builder.thumbnailUri"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailUri:Landroid/net/Uri;

    .line 242
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getThumbnailSizeResId$musicLibrary_release()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailSizeResId:I

    .line 244
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getPrivateIconEnabled$musicLibrary_release()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, "is_secretbox"

    :cond_4
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->privateModeCol:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->isRemoteTrack$musicLibrary_release()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isRemoteTrack:Z

    .line 250
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->getListItemMenuable$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->listItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    .line 252
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/OnPaddingChangedListener;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/OnPaddingChangedListener;)V

    .line 258
    :cond_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$getIgnoreParentPaddingChildViews$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getIgnoreParentPaddingChildViews()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOnGenericMotionListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Landroid/view/View$OnGenericMotionListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-object p0
.end method

.method public static final synthetic access$getOnHeaderItemLayoutChangedListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onHeaderItemLayoutChangedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;

    return-object p0
.end method

.method public static final synthetic access$getOnItemClickListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method

.method public static final synthetic access$getOnItemLongClickListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    return-object p0
.end method

.method public static final synthetic access$getOnThumbnailClickListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onThumbnailClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method

.method public static final synthetic access$getText1ColorResId$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text1ColorResId:I

    return p0
.end method

.method public static final synthetic access$getText2ColorResId$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text2ColorResId:I

    return p0
.end method

.method public static final synthetic access$getText3ColorResId$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text3ColorResId:I

    return p0
.end method

.method public static final synthetic access$getThumbnailFullUriIndex$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailFullUriIndex:I

    return p0
.end method

.method public static final synthetic access$ignoreParentPadding(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->ignoreParentPadding(Landroid/view/View;II)V

    return-void
.end method

.method public static final synthetic access$setOnGenericMotionListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View$OnGenericMotionListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-void
.end method

.method public static final synthetic access$setOnHeaderItemLayoutChangedListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onHeaderItemLayoutChangedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;

    return-void
.end method

.method public static final synthetic access$setOnItemClickListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static final synthetic access$setOnItemLongClickListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    return-void
.end method

.method public static final synthetic access$setOnThumbnailClickListener$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onThumbnailClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static final synthetic access$setThumbnailFullUriIndex$p(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailFullUriIndex:I

    return-void
.end method

.method public static final convertToId(II)J
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->Companion:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;->a(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final convertToViewType(JI)I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->Companion:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;->a(JI)I

    move-result p0

    return p0
.end method

.method private final getButtonBackgroundShowables()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->buttonBackgroundShowables$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getCursorInternal(IZ)Landroid/database/Cursor;
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->a(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    if-nez p2, :cond_0

    return-object v1

    .line 597
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "use valid position for reorder item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    move v0, p1

    .line 604
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->dataValid:Z

    if-nez v2, :cond_5

    if-nez p2, :cond_4

    .line 608
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->DEBUG_DATA_VALIDATION:Z

    if-eqz p1, :cond_3

    const-string p1, "UiList"

    .line 609
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " getCursorInternal() data invalid"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1

    .line 606
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this should only be called when the cursor is valid. pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 614
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-nez p1, :cond_8

    if-nez p2, :cond_7

    .line 615
    check-cast v1, Landroid/database/Cursor;

    goto :goto_0

    .line 616
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t move cursor to position "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 620
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    :goto_0
    return-object v1
.end method

.method private final getFooterViewTypes()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->footerViewTypes$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getHeaderViewTypes()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->headerViewTypes$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getIgnoreParentPaddingChildViews()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->ignoreParentPaddingChildViews$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getPredefinedHeaderViews()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->predefinedHeaderViews$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method private final getPredefinedViewResources()Landroid/util/SparseIntArray;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->predefinedViewResources$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private final getViewEnablers()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->viewEnablers$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final ignoreParentPadding(Landroid/view/View;II)V
    .locals 0

    .line 828
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    neg-int p2, p2

    .line 829
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    neg-int p2, p3

    .line 830
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void

    .line 828
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final onBindPrivateIconView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 412
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 414
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->privateModeColIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 415
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->privateModeColIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 422
    :pswitch_0
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    if-nez p2, :cond_4

    .line 423
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->private_tag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    .line 424
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_library_tracks_private_mode:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 428
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->winsetUiEnabled:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$color;->list_item_icon_private_winset:I

    goto :goto_1

    .line 429
    :cond_1
    sget v2, Lcom/samsung/android/app/musiclibrary/R$color;->blur_icon:I

    :goto_1
    const/4 v3, 0x0

    .line 426
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 425
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 433
    :cond_2
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 435
    :cond_4
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 418
    :pswitch_1
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    .line 419
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final onBindViewHolderChoiceMode(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 348
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->selectorMode:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasCheckBox:Z

    if-eqz v0, :cond_c

    .line 352
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->choiceMode:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isActionModeEnabled:Z

    if-nez v0, :cond_5

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->choiceMode:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->choiceMode:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->c:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 389
    :cond_2
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    .line 390
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 391
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/16 v1, 0x8

    .line 392
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 395
    :cond_4
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto/16 :goto_1

    .line 354
    :cond_5
    :goto_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 355
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_6

    .line 356
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 358
    :cond_6
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 359
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_7

    .line 360
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 363
    :cond_7
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 364
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 365
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->winsetUiEnabled:Z

    if-nez v3, :cond_8

    const/4 v3, 0x1

    .line 366
    new-array v4, v3, [[I

    new-array v5, v1, [I

    aput-object v5, v4, v1

    check-cast v4, [[I

    .line 367
    new-array v3, v3, [I

    .line 369
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/app/musiclibrary/R$color;->blur_checkbox_background:I

    .line 368
    invoke-static {v5, v6, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v3, v1

    .line 373
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 374
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->s:Z

    if-eqz v2, :cond_8

    .line 375
    sget v2, Lcom/samsung/android/app/musiclibrary/R$drawable;->checkbox_background_round:I

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 364
    :cond_8
    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 380
    :cond_9
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 381
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_b
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 382
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$onBindViewHolderChoiceMode$2;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$onBindViewHolderChoiceMode$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    check-cast v1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 399
    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_10

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->a(I)I

    move-result p2

    .line 403
    :cond_d
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->selectorMode:Z

    if-eqz v1, :cond_e

    .line 404
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 405
    :cond_e
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_10

    .line 406
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_f
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_10
    :goto_2
    return-void
.end method

.method private final onBindViewHolderMenuItemButton(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->listItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->listItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;->b(Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isActionModeEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 482
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->more:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButtonGuideLine:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_3
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->more:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isEnabled(I)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 487
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const-string v0, "fragment.activity!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 488
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->more:Landroid/view/View;

    .line 489
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->more_options:I

    .line 486
    invoke-static {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method private final onBindViewHolderRadioButton(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_1

    .line 443
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private final onBindViewHolderReorder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 448
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_4

    .line 449
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 450
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->reorder:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->reorderView:Landroid/view/View;

    .line 451
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->reorderView:Landroid/view/View;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$onBindViewHolderReorder$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$onBindViewHolderReorder$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 462
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->reorderView:Landroid/view/View;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->reorderView:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 464
    :cond_2
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->reorder:I

    const/4 v3, 0x0

    .line 465
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getContentDescription$musicLibrary_release()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 463
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Object;)V

    goto :goto_0

    .line 468
    :cond_3
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->reorderView:Landroid/view/View;

    if-eqz p1, :cond_4

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final addButtonBackgroundShowable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V
    .locals 1

    const-string v0, "buttonBackgroundShowable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->showButtonBackground:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->showButtonBackground:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;->showButtonBackground(Z)V

    .line 848
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getButtonBackgroundShowables()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addFooterView(II)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    const-string v0, "UiList"

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " addFooterView() viewType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getFooterViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getPredefinedViewResources()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public final addHeaderView(II)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    const-string v0, "UiList"

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " addHeaderView() viewType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getPredefinedViewResources()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public final addHeaderView(ILandroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UiList"

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " addHeaderView() duplicated viewType is added. Do not add duplicated headerView. viewType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getPredefinedHeaderViews()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V
    .locals 1

    const-string v0, "enabler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isActionModeEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;->setViewEnabled(Z)V

    .line 835
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getViewEnablers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addViewIgnoreParentPadding(Landroid/view/View;)V
    .locals 2

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getIgnoreParentPaddingChildViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    const-string v1, "recyclerViewableList!!.recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingEnd()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->ignoreParentPadding(Landroid/view/View;II)V

    return-void
.end method

.method protected final doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->recyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "recyclerView"

    .line 697
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$doNotifyIfReady$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$doNotifyIfReady$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "UiList"

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " notify is ready immediately"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 705
    :cond_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    .line 707
    :cond_2
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public final getCursor()Landroid/database/Cursor;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public final getCursor(I)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 578
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursorInternal(IZ)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected final getCursorOrThrow(I)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x1

    .line 588
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursorInternal(IZ)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object p1
.end method

.method public final getDataValid$musicLibrary_release()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->dataValid:Z

    return v0
.end method

.method public final getFooterViewCount()I
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getFooterViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getFooterViewType$musicLibrary_release(I)I
    .locals 1

    .line 761
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getFooterViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "footerViewTypes[index]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public final getHeaderViewCount()I
    .locals 1

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getHeaderViewType$musicLibrary_release(I)I
    .locals 1

    .line 757
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "headerViewTypes[index]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 3

    .line 516
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->DEBUG_DATA_VALIDATION:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->dataValid:Z

    if-nez v0, :cond_0

    const-string v0, "UiList"

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getItemCount() data invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->dataValid:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 520
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getItemCpAttrs(I)I
    .locals 2

    .line 539
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cpAttrsColIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 540
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cpAttrsColIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getItemId(I)J
    .locals 2

    .line 527
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->rowIDColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final getItemKeyword(I)Ljava/lang/String;
    .locals 3

    .line 531
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->keywordIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 532
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->keywordIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getItemKeywords(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;
    .locals 5

    const-string v0, "checkedItemPositions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->keywordIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 558
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 561
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 562
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 564
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 568
    :cond_2
    check-cast v1, Ljava/util/Collection;

    .line 1311
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemViewType(I)I
    .locals 6

    .line 504
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->dataValid:Z

    if-eqz v0, :cond_6

    .line 505
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", cursorCount="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->rowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 508
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->rowIDColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    .line 511
    :cond_5
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->Companion:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;

    invoke-virtual {v2, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$Companion;->a(JI)I

    move-result p1

    :goto_1
    return p1

    .line 504
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "this should only be called when the cursor is valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected final getListItemMenuable()Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->listItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    return-object v0
.end method

.method public final getModifiedPosition(I)I
    .locals 4

    .line 774
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 778
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "UiList"

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " getModifiedPosition() position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> modified position="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 779
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final getReorderState$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    return-object v0
.end method

.method public final getText1(I)Ljava/lang/String;
    .locals 3

    .line 547
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text1Index:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 548
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text1Index:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getValidItem(I)Ljava/lang/Object;
    .locals 1

    .line 766
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getModifiedPosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 768
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final hasFooterView(I)Z
    .locals 1

    .line 753
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getFooterViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hasHeaderView(I)Z
    .locals 1

    .line 749
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 3

    const-string v0, "newCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "UiList"

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " initColIndex() newCursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text1Col:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text1Col:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text1Index:I

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text2Col:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text2Col:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text2Index:I

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text3Col:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text3Col:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text3Index:I

    .line 636
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailIdCol:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 637
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailIdCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailIdIndex:I

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailFullUriCol:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 640
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailFullUriCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailFullUriIndex:I

    .line 642
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->keywordCol:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 643
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->keywordCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->keywordIndex:I

    .line 645
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->privateModeCol:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 646
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->privateModeCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->privateModeColIndex:I

    .line 648
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cpAttrsCol:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 649
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cpAttrsCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cpAttrsColIndex:I

    :cond_8
    return-void
.end method

.method public final isActionModeEnabled()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isActionModeEnabled:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final isReorderEnabled()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->a()Z

    move-result v0

    return v0
.end method

.method public final moveItem(II)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->a(II)V

    .line 818
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 57
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "UiList"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onBindViewHolder() holder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemViewType(I)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 294
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 295
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->choiceMode:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->b:I

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderChoiceMode(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 296
    :cond_2
    iget-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasPrivateTag:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindPrivateIconView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 297
    :cond_3
    iget-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasReorder:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderReorder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 298
    :cond_4
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderRadioButton(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 299
    :cond_5
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 300
    :cond_6
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->more:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderMenuItemButton(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 302
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderItemEnabled(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method protected onBindViewHolderItemEnabled(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ebd70a4    # 0.37f

    .line 496
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "this"

    .line 497
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 498
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 499
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 307
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text1Index:I

    if-eq v0, v1, :cond_0

    .line 309
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text1Index:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text2Index:I

    if-eq v0, v1, :cond_1

    .line 313
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text2Index:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text3Index:I

    if-eq v0, v1, :cond_2

    .line 317
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->context:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->text3Index:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 323
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailFullUriIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 324
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;

    .line 325
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isDownKeyPerforming:Z

    .line 324
    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;-><init>(Landroid/widget/ImageView;IZ)V

    .line 327
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailSizeResId:I

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p1

    .line 328
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailFullUriIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void

    .line 333
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isRemoteTrack:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->c:Landroid/net/Uri;

    goto :goto_0

    .line 334
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cpAttrsColIndex:I

    if-eq v0, v1, :cond_2

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailUriSet:Landroid/util/SparseArray;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cpAttrsColIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailUri:Landroid/net/Uri;

    .line 339
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailIdIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 340
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;

    .line 341
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isDownKeyPerforming:Z

    .line 340
    invoke-direct {p2, p1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;-><init>(Landroid/widget/ImageView;IZ)V

    .line 343
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->thumbnailSizeResId:I

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    .line 344
    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getPredefinedHeaderViews()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getPredefinedViewResources()Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-nez v0, :cond_0

    if-eq v1, v2, :cond_0

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onHeaderViewCreatedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;->a(ILandroid/view/View;)V

    :cond_0
    const-string v1, "UiList"

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onCreateViewHolder() viewType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", predefinedView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", hasParent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    move-object v1, v3

    :cond_3
    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    const-string v2, "UiList"

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

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

    .line 276
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 282
    :cond_4
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation
.end method

.method public final removeFooterView(I)V
    .locals 3

    .line 742
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getFooterViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getFooterViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getFooterViewTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 745
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getPredefinedViewResources()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public final removeHeaderView(I)V
    .locals 3

    .line 722
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 725
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getPredefinedHeaderViews()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 726
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getPredefinedViewResources()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public final safeNotifyDataSetChanged()V
    .locals 1

    .line 688
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$safeNotifyDataSetChanged$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$safeNotifyDataSetChanged$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final safeNotifyItemChanged(I)V
    .locals 1

    .line 692
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$safeNotifyItemChanged$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$safeNotifyItemChanged$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;I)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setActionModeEnabled(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isActionModeEnabled:Z

    return-void
.end method

.method public final setChoiceMode(IZ)V
    .locals 0

    .line 812
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->choiceMode:I

    .line 813
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->selectorMode:Z

    return-void
.end method

.method public final setDataValid$musicLibrary_release(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->dataValid:Z

    return-void
.end method

.method public final setIsDownKeyPerforming(Z)V
    .locals 0

    .line 859
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isDownKeyPerforming:Z

    return-void
.end method

.method public final setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-void
.end method

.method public final setOnHeaderItemLayoutChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onHeaderItemLayoutChangedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;

    return-void
.end method

.method public final setOnHeaderViewCreatedListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onHeaderViewCreatedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    return-void
.end method

.method public final setOnThumbnailClickListener$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onThumbnailClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public final setReorderEnabled(Z)V
    .locals 3

    const-string v0, "ReorderManager"

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter.setReorderEnabled() enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->a(Z)V

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->b(I)V

    :cond_0
    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 2

    .line 839
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getViewEnablers()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1317
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    .line 840
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;->setViewEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showButtonBackground(Z)V
    .locals 2

    .line 852
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->showButtonBackground:Ljava/lang/Boolean;

    .line 853
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getButtonBackgroundShowables()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1319
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;

    .line 854
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;->showButtonBackground(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 9

    const-string v0, "UiList"

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " swapCursor() prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_3

    return-object v4

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 660
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    if-nez p1, :cond_5

    .line 661
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 663
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    .line 664
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->cursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    if-nez p1, :cond_7

    .line 666
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->rowIDColumn:I

    .line 667
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->dataValid:Z

    goto :goto_3

    .line 669
    :cond_8
    iput v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->rowIDColumn:I

    .line 670
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->dataValid:Z

    .line 673
    :goto_3
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$swapCursor$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$swapCursor$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->doNotifyIfReady(Lkotlin/jvm/functions/Function0;)V

    .line 675
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->b(I)V

    .line 678
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result p1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 1313
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 678
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_a

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1314
    :cond_c
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 1315
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 682
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->reorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    if-le v1, v4, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->b(Z)V

    return-object v2
.end method
