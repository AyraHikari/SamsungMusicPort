.class final Landroid/support/v7/view/menu/StandardMenuPopup;
.super Landroid/support/v7/view/menu/MenuPopup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private final mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field final mPopup:Landroid/support/v7/widget/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field mShownAnchorView:Landroid/view/View;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 4

    .line 116
    invoke-direct {p0}, Landroid/support/v7/view/menu/MenuPopup;-><init>()V

    .line 61
    new-instance v0, Landroid/support/v7/view/menu/StandardMenuPopup$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/StandardMenuPopup$1;-><init>(Landroid/support/v7/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 79
    new-instance v0, Landroid/support/v7/view/menu/StandardMenuPopup$2;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/StandardMenuPopup$2;-><init>(Landroid/support/v7/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 117
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10104a9

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 119
    iget v0, v1, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, p1, v1}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 122
    :cond_0
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 124
    :goto_0
    iput-object p2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 125
    iput-boolean p6, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 126
    iget-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 127
    new-instance p6, Landroid/support/v7/view/menu/MenuAdapter;

    iget-boolean v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    invoke-direct {p6, p2, p1, v0}, Landroid/support/v7/view/menu/MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    iput-object p6, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    .line 128
    iput p4, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    .line 129
    iput p5, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 131
    iget-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 134
    iput-object p3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 136
    new-instance p1, Landroid/support/v7/widget/MenuPopupWindow;

    iget-object p3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    const/4 p4, 0x0

    iget p5, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget p6, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    invoke-direct {p1, p3, p4, p5, p6}, Landroid/support/v7/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    .line 139
    iget-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 46
    iget-object p0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static synthetic access$002(Landroid/support/v7/view/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 46
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/v7/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 46
    iget-object p0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method private tryShow()Z
    .locals 7

    .line 153
    invoke-virtual {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 157
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mWasDismissed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 161
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 163
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 164
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setModal(Z)V

    .line 167
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 168
    iget-object v3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 169
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    .line 171
    iget-object v3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v4, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 173
    :cond_3
    iget-object v3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 174
    iget-object v3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    iget v3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 177
    iget-boolean v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 178
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    iget-object v4, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v0, v3, v4, v5}, Landroid/support/v7/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContentWidth:I

    .line 179
    iput-boolean v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 182
    :cond_4
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    iget v4, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 183
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 184
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 185
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 187
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 190
    iget-boolean v4, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 191
    iget-object v4, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 192
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$layout;->sesl_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    .line 194
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 196
    iget-object v6, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 199
    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 204
    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    iget-object v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    return v1

    :cond_7
    :goto_1
    return v2
.end method


# virtual methods
.method public addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 218
    invoke-virtual {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 339
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 296
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->dismiss()V

    .line 299
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mWasDismissed:Z

    .line 236
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 238
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 240
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 243
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 245
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 325
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 9

    .line 266
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 267
    new-instance v0, Landroid/support/v7/view/menu/MenuPopupHelper;

    iget-object v3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v6, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v7, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v8, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 269
    iget-object v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->setPresenterCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 270
    invoke-static {p1}, Landroid/support/v7/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 271
    iget v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 274
    iget-object v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    .line 275
    iput-object v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 278
    iget-object v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 281
    iget-object v2, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v2

    .line 282
    iget-object v3, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroid/support/v7/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v3

    .line 283
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 320
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 261
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 149
    iput p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mDropDownGravity:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    .line 345
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 334
    iput-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mShowTitle:Z

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 211
    invoke-direct {p0}, Landroid/support/v7/view/menu/StandardMenuPopup;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMenuView(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 252
    iput-boolean p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 254
    iget-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
