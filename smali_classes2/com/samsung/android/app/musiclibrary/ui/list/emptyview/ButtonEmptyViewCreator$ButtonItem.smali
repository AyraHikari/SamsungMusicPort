.class public Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonItem"
.end annotation


# instance fields
.field private final a:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;->a:I

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;->a:I

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;->b:Landroid/view/View$OnClickListener;

    return-object p0
.end method
