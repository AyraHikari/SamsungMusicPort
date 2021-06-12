.class public Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public final a:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field public final b:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final c:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->a:I

    .line 53
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->b:I

    .line 54
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->c:I

    .line 55
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->d:I

    return-void
.end method
