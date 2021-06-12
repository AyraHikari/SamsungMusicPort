.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi$Music;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:Ljava/lang/Integer;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->c:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->d:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->e:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 329
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;->e:Ljava/lang/Integer;

    return-object v0
.end method
