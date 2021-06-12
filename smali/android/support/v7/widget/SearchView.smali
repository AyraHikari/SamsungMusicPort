.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;,
        Landroid/support/v7/widget/SearchView$SearchAutoComplete;,
        Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;,
        Landroid/support/v7/widget/SearchView$SavedState;,
        Landroid/support/v7/widget/SearchView$OnSuggestionListener;,
        Landroid/support/v7/widget/SearchView$OnCloseListener;,
        Landroid/support/v7/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field final mBackButton:Landroid/widget/ImageView;

.field private mClearingFocus:Z

.field final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mMaxWidth:I

.field final mMoreButton:Landroid/widget/ImageView;

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

.field mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

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

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private mSearchIconResId:I

.field private final mSearchPlate:Landroid/view/View;

.field final mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field mSearchable:Landroid/app/SearchableInfo;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    invoke-direct {v0}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 379
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 383
    sget v0, Landroid/support/v7/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 387
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 136
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->mTemp:[I

    .line 137
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    .line 290
    new-instance v0, Landroid/support/v7/widget/SearchView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$1;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 297
    new-instance v0, Landroid/support/v7/widget/SearchView$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$2;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 308
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 1112
    new-instance v0, Landroid/support/v7/widget/SearchView$5;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$5;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1134
    new-instance v0, Landroid/support/v7/widget/SearchView$6;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$6;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1312
    new-instance v0, Landroid/support/v7/widget/SearchView$7;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$7;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1591
    new-instance v0, Landroid/support/v7/widget/SearchView$8;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$8;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1603
    new-instance v0, Landroid/support/v7/widget/SearchView$9;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$9;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1917
    new-instance v0, Landroid/support/v7/widget/SearchView$10;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SearchView$10;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 389
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->SearchView:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p2

    .line 392
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 393
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SearchView_layout:I

    sget v0, Landroid/support/v7/appcompat/R$layout;->sesl_search_view:I

    invoke-virtual {p2, p3, v0}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    const/4 v0, 0x1

    .line 395
    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 397
    sget p1, Landroid/support/v7/appcompat/R$id;->search_src_text:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 398
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V

    .line 400
    sget p1, Landroid/support/v7/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 401
    sget p1, Landroid/support/v7/appcompat/R$id;->search_plate:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 402
    sget p1, Landroid/support/v7/appcompat/R$id;->submit_area:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 403
    sget p1, Landroid/support/v7/appcompat/R$id;->search_button:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 404
    sget p1, Landroid/support/v7/appcompat/R$id;->search_go_btn:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 405
    sget p1, Landroid/support/v7/appcompat/R$id;->search_close_btn:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 406
    sget p1, Landroid/support/v7/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 407
    sget p1, Landroid/support/v7/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    .line 408
    sget p1, Landroid/support/v7/appcompat/R$id;->search_more_btn:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    .line 409
    sget p1, Landroid/support/v7/appcompat/R$id;->search_back_btn:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    .line 412
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    sget p3, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryBackground:I

    .line 413
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 412
    invoke-static {p1, p3}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 414
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    sget p3, Landroid/support/v7/appcompat/R$styleable;->SearchView_submitBackground:I

    .line 415
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 414
    invoke-static {p1, p3}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 416
    sget p1, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {p2, p1, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SearchView;->mSearchIconResId:I

    .line 417
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    sget p3, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    sget p3, Landroid/support/v7/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    sget p3, Landroid/support/v7/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    sget p3, Landroid/support/v7/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    sget p3, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    sget p1, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchHintIcon:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    .line 425
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 426
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 427
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 428
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 429
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 430
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 432
    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipForceActionBarPosX(Z)V

    .line 433
    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipForceBelow(Z)V

    .line 437
    sget p1, Landroid/support/v7/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    sget p3, Landroid/support/v7/appcompat/R$layout;->sesl_search_dropdown_item_icons_2line:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    .line 439
    sget p1, Landroid/support/v7/appcompat/R$styleable;->SearchView_commitIcon:I

    invoke-virtual {p2, p1, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 441
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 448
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 449
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 450
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 451
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 454
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance p3, Landroid/support/v7/widget/SearchView$3;

    invoke-direct {p3, p0}, Landroid/support/v7/widget/SearchView$3;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 462
    sget p1, Landroid/support/v7/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    invoke-virtual {p2, p1, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 464
    sget p1, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-eq p1, p3, :cond_0

    .line 466
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    .line 469
    :cond_0
    sget p1, Landroid/support/v7/appcompat/R$styleable;->SearchView_defaultQueryHint:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 470
    sget p1, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 472
    sget p1, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_imeOptions:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 474
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    .line 477
    :cond_1
    sget p1, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_inputType:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-eq p1, p3, :cond_2

    .line 479
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    .line 483
    :cond_2
    sget p1, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_focusable:I

    invoke-virtual {p2, p1, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 484
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 487
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    sget p3, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    sget p3, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    invoke-virtual {p2}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 494
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.speech.action.WEB_SEARCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 495
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 496
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string p3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v0, "web_search"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 500
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 503
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 504
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance p2, Landroid/support/v7/widget/SearchView$4;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/SearchView$4;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 513
    :cond_3
    iget-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 514
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 517
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 518
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/support/v4/widget/SeslTextViewReflector;->getField_SEM_AUTOFILL_ID(Landroid/widget/TextView;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 520
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p2, p1, v1}, Landroid/support/v4/widget/SeslTextViewReflector;->semSetActionModeMenuItemEnabled(Landroid/widget/TextView;IZ)V

    :cond_4
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1745
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 1746
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 1751
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const-string p1, "user_query"

    .line 1753
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p1, "query"

    .line 1755
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "intent_extra_data_key"

    .line 1758
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string p1, "app_data"

    .line 1761
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "action_key"

    .line 1764
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_msg"

    .line 1765
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1767
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "suggest_intent_action"

    .line 1864
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1867
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SEARCH"

    :cond_1
    move-object v2, v1

    const-string v1, "suggest_intent_data"

    .line 1874
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1876
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "suggest_intent_data_id"

    .line 1880
    invoke-static {p1, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    move-object v3, v0

    goto :goto_0

    .line 1885
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    :goto_0
    const-string v1, "suggest_intent_query"

    .line 1887
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "suggest_intent_extra_data"

    .line 1888
    invoke-static {p1, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    .line 1890
    invoke-direct/range {v1 .. v7}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 1894
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, -0x1

    :goto_1
    const-string p3, "SearchView"

    .line 1898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search suggestions cursor at row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned exception."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 9

    .line 1790
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1795
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1797
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1804
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1805
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v3, "app_data"

    .line 1806
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1812
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p1, "free_form"

    const/4 v4, 0x1

    .line 1820
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1821
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1822
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1824
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 1825
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v7

    .line 1827
    :goto_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1828
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v7

    .line 1830
    :goto_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    if-eqz v8, :cond_4

    .line 1831
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v4

    :cond_4
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"

    .line 1834
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.PROMPT"

    .line 1835
    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.LANGUAGE"

    .line 1836
    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.MAX_RESULTS"

    .line 1837
    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "calling_package"

    if-nez v0, :cond_5

    goto :goto_2

    .line 1839
    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    .line 1838
    :goto_2
    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    .line 1842
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    .line 1843
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v3
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 1

    .line 1775
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1776
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    const-string p2, "calling_package"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1778
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 1777
    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private dismissSuggestions()V
    .locals 1

    .line 1357
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    return-void
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 993
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTemp:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 994
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->getLocationInWindow([I)V

    .line 995
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTemp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    .line 996
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mTemp:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    aget v2, v3, v2

    sub-int/2addr v1, v2

    .line 997
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 1237
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 1241
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 1242
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1244
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1245
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1246
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private getPreferredHeight()I
    .locals 2

    .line 1006
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_search_view_preferred_height:I

    .line 1007
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .line 1001
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_search_view_preferred_width:I

    .line 1002
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 4

    .line 1029
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1031
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1032
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    goto :goto_0

    .line 1033
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1034
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1037
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 1

    .line 1910
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .line 1046
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1684
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SearchView"

    .line 1686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 1

    .line 1661
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1662
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1664
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1667
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .line 1081
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 2

    .line 1628
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1629
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1633
    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1635
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1639
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1642
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1646
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1694
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1696
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void
.end method

.method private updateCloseButton()V
    .locals 3

    .line 1069
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1072
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1073
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1074
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 1076
    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private updateQueryHint()V
    .locals 2

    .line 1251
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1252
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSearchAutoComplete()V
    .locals 5

    .line 1259
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1260
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1261
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1268
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1281
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1282
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1287
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1288
    new-instance v0, Landroid/support/v7/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v3, v4}, Landroid/support/v7/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 1290
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1291
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Landroid/support/v7/widget/SuggestionsAdapter;

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .line 1060
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 1061
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 1062
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 1065
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 1

    .line 1051
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 1055
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 6

    .line 1011
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mIconified:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 1015
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 1017
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1018
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    .line 1019
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1023
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 1024
    :cond_2
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 1025
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    return-void
.end method

.method private updateVoiceButton(Z)V
    .locals 2

    .line 1305
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1307
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1309
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method adjustDropDownSizeAndPosition()V
    .locals 3

    .line 1545
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1546
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1547
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 1552
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v1, :cond_0

    .line 1555
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_0

    .line 1557
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x0

    rsub-int/lit8 v1, v1, 0x0

    .line 1559
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1560
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x0

    .line 1562
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1564
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1565
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->showDropDown()V

    :cond_1
    return-void
.end method

.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    .line 636
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    .line 637
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->clearFocus()V

    .line 638
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 639
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->access$000(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    .line 640
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    return-void
.end method

.method forceSuggestionQuery()V
    .locals 2

    .line 1905
    sget-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1906
    sget-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .line 591
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .line 613
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 916
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .line 698
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 758
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    goto :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 763
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .line 530
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .line 526
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;
    .locals 1

    .line 894
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .line 794
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .line 874
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .line 844
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v1, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1701
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1702
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 1460
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1461
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    .line 1462
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1463
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1464
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .line 1472
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1474
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1475
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    .line 1476
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1477
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 1478
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method onCloseClicked()V
    .locals 3

    .line 1361
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1363
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_3

    .line 1365
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    invoke-interface {v0}, Landroid/support/v7/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1367
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1369
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 1373
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1376
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/support/v4/view/inputmethod/SeslInputMethodManagerReflector;->isAccessoryKeyboardState(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1380
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->access$000(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    goto :goto_0

    .line 1382
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->access$000(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1100
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1101
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1102
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    return-void
.end method

.method onItemClicked(IILjava/lang/String;)Z
    .locals 0

    .line 1572
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    .line 1573
    invoke-interface {p2, p1}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 1574
    invoke-direct {p0, p1, p3, p2}, Landroid/support/v7/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1575
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1, p3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->access$000(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    .line 1576
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    const/4 p1, 0x1

    return p1
.end method

.method onItemSelected(I)Z
    .locals 1

    .line 1583
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    .line 1584
    invoke-interface {v0, p1}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1585
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 974
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 979
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SearchView;->getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 980
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    const/4 p4, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p2, p4, v0, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 982
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    if-nez p1, :cond_0

    .line 983
    new-instance p1, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget-object p4, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p1, p2, p3, p4}, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    .line 985
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 987
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 922
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void

    .line 927
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 928
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 944
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v0, :cond_5

    .line 945
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 950
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez p1, :cond_3

    iget p1, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result p1

    goto :goto_0

    .line 933
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v0, :cond_5

    .line 934
    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 955
    :cond_5
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 956
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_1

    .line 963
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result p2

    goto :goto_1

    .line 960
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 968
    :goto_1
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 969
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 968
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1109
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1534
    instance-of v0, p1, Landroid/support/v7/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 1535
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1538
    :cond_0
    check-cast p1, Landroid/support/v7/widget/SearchView$SavedState;

    .line 1539
    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1540
    iget-boolean p1, p1, Landroid/support/v7/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1541
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1526
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1527
    new-instance v1, Landroid/support/v7/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1528
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    iput-boolean v0, v1, Landroid/support/v7/widget/SearchView$SavedState;->isIconified:Z

    return-object v1
.end method

.method onSearchClicked()V
    .locals 2

    const/4 v0, 0x0

    .line 1389
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1390
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1392
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/support/v4/view/inputmethod/SeslInputMethodManagerReflector;->isAccessoryKeyboardState(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->access$000(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    goto :goto_0

    .line 1398
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->access$000(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    .line 1401
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 1402
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method onSubmitQuery()V
    .locals 3

    .line 1343
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1344
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1345
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    .line 1346
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1347
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1348
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1350
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->access$000(Landroid/support/v7/widget/SearchView$SearchAutoComplete;Z)V

    .line 1351
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    :cond_2
    return-void
.end method

.method onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1192
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1195
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-nez p1, :cond_1

    return v0

    .line 1198
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x42

    if-eq p2, p1, :cond_6

    const/16 p1, 0x54

    if-eq p2, p1, :cond_6

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0x15

    if-eq p2, p1, :cond_4

    const/16 p3, 0x16

    if-ne p2, p3, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x13

    if-ne p2, p1, :cond_7

    .line 1225
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_4
    :goto_0
    if-ne p2, p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    .line 1214
    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 1215
    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result p1

    .line 1216
    :goto_1
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1217
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1218
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1219
    sget-object p1, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    return p3

    .line 1203
    :cond_6
    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p1

    const/4 p2, 0x0

    .line 1204
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method onTextChanged(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1325
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1326
    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1328
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1329
    :goto_0
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 1330
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    .line 1331
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    .line 1333
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1334
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1335
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v0, :cond_1

    .line 1336
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .line 1430
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1433
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    .line 1434
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    :cond_0
    return-void
.end method

.method onVoiceClicked()V
    .locals 2

    .line 1408
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    return-void

    .line 1411
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1413
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1414
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1416
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1417
    :cond_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1418
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1420
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SearchView"

    const-string v1, "Could not find voice search activity"

    .line 1425
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1441
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1444
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Landroid/support/v4/view/inputmethod/SeslInputMethodManagerReflector;->isAccessoryKeyboardState(Landroid/view/inputmethod/InputMethodManager;)I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1452
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 619
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 621
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 623
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_3

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 626
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    :cond_2
    return p1

    .line 630
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public seslGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;
    .locals 1

    .line 192
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method public seslGetOverflowMenuButton()Landroid/widget/ImageView;
    .locals 1

    .line 214
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public seslGetUpButton()Landroid/widget/ImageView;
    .locals 1

    .line 203
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public seslSetOnOverflowMenuButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public seslSetOnUpButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public seslSetOverflowMenuButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public seslSetOverflowMenuButtonVisibility(I)V
    .locals 1

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public seslSetUpButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public seslSetUpButtonVisibility(I)V
    .locals 1

    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 568
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1708
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    .line 1716
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 1724
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 809
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    .line 811
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .line 781
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 782
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    .line 783
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 784
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 580
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 903
    iput p1, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    .line 905
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V
    .locals 0

    .line 659
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 668
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V
    .locals 0

    .line 650
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 689
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroid/support/v7/widget/SearchView$OnSuggestionListener;)V
    .locals 0

    .line 677
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 710
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 712
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 713
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 717
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 718
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 733
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 734
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 1

    .line 862
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    .line 863
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    instance-of v0, v0, Landroid/support/v7/widget/SuggestionsAdapter;

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Landroid/support/v7/widget/SuggestionsAdapter;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 0

    .line 542
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 543
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz p1, :cond_0

    .line 544
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSearchAutoComplete()V

    .line 545
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 548
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->hasVoiceSearch()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 558
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 0

    .line 834
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 835
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V
    .locals 1

    .line 884
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 886
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method updateFocusedState()V
    .locals 2

    .line 1085
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    sget-object v0, Landroid/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    .line 1087
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1089
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1091
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1093
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1095
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->invalidate()V

    return-void
.end method
