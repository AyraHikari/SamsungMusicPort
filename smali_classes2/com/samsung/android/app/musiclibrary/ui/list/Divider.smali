.class public final Lcom/samsung/android/app/musiclibrary/ui/list/Divider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    const-string v0, "dividerChecker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->b:Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 238
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/DefaultDividerChecker;

    invoke-direct {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DefaultDividerChecker;-><init>()V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->a:I

    return v0
.end method

.method public final b()Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->b:Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->a:I

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->a:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->b:Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->b:Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->b:Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Divider(dividerDrawableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dividerChecker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->b:Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
