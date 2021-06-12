.class Landroid/support/v7/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Landroid/support/v4/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticModifiers:I

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemContentDescription:Ljava/lang/CharSequence;

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemIconTintList:Landroid/content/res/ColorStateList;

.field private itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericModifiers:I

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemTooltipText:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/support/v7/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0

    .line 347
    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 335
    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 336
    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 348
    iput-object p2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 350
    invoke-virtual {p0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V

    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 459
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 547
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v0, v0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 548
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    .line 549
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 550
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const-string p3, "SupportMenuInflater"

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot instantiate class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 5

    .line 464
    iget-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 465
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 466
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 467
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 468
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 469
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 471
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_1

    .line 472
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 475
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v0, v0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 480
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    .line 481
    invoke-virtual {v1}, Landroid/support/v7/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 477
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 484
    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 485
    :cond_4
    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    if-eqz v0, :cond_5

    .line 487
    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    goto :goto_2

    .line 488
    :cond_5
    instance-of v0, p1, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    if-eqz v0, :cond_6

    .line 489
    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    .line 494
    :cond_6
    :goto_2
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 495
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    sget-object v1, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v2, v2, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 497
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    .line 500
    :cond_7
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v0, :cond_9

    if-nez v2, :cond_8

    .line 502
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 505
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_9
    :goto_3
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_a

    .line 510
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    .line 513
    :cond_a
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 515
    iget-char v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)V

    .line 517
    iget-char v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setNumericShortcut(Landroid/view/MenuItem;CI)V

    .line 519
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_b

    .line 520
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 522
    :cond_b
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    .line 523
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public addItem()V
    .locals 5

    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 529
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 533
    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 534
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 535
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 2

    .line 366
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v0, v0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 368
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    .line 369
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 371
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 372
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 374
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_visible:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 375
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_enabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 377
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 6

    .line 384
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v0, v0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 387
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    .line 388
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 389
    sget v2, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 390
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 392
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 393
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 394
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 395
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 396
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 397
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_alphabeticModifiers:I

    const/16 v2, 0x1000

    .line 398
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    .line 399
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    .line 400
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 401
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_numericModifiers:I

    .line 402
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    .line 403
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_0

    .line 409
    :cond_0
    iget v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 411
    :goto_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checked:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 412
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_visible:I

    iget-boolean v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 413
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 414
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_showAsAction:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 415
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 416
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionLayout:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 417
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 418
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 421
    iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 422
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v4, Landroid/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v5, v5, Landroid/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4, v5}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ActionProvider;

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "SupportMenuInflater"

    const-string v4, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 427
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_3
    iput-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 433
    :goto_2
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_contentDescription:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    .line 434
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_tooltipText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    .line 435
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 441
    :cond_4
    iput-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 443
    :goto_3
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 444
    sget v0, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_4

    .line 447
    :cond_5
    iput-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 450
    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 452
    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return-void
.end method

.method public resetGroup()V
    .locals 1

    const/4 v0, 0x0

    .line 354
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    .line 355
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 356
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 357
    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 359
    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    return-void
.end method
