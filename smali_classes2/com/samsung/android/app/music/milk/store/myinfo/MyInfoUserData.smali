.class public final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/base/ItemViewable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

.field private g:Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;-><init>(Ljava/lang/String;IZZLjava/util/List;Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZLjava/util/List;Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;",
            ">;",
            "Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;",
            "Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->b:I

    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c:Z

    iput-boolean p4, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->d:Z

    iput-object p5, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->f:Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    iput-object p7, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->g:Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZZLjava/util/List;Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    .line 9
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    const/4 p2, -0x1

    const/4 p9, -0x1

    goto :goto_0

    :cond_1
    move p9, p2

    :goto_0
    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    const/4 p4, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    move v2, p4

    :goto_2
    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    .line 14
    move-object p5, v0

    check-cast p5, Ljava/util/List;

    :cond_4
    move-object v3, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    .line 15
    move-object p6, v0

    check-cast p6, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    :cond_5
    move-object v4, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    .line 16
    move-object p7, v0

    check-cast p7, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    :cond_6
    move-object v0, p7

    move-object p2, p0

    move-object p3, p1

    move p4, p9

    move p5, v1

    move p6, v2

    move-object p7, v3

    move-object p8, v4

    move-object p9, v0

    invoke-direct/range {p2 .. p9}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;-><init>(Ljava/lang/String;IZZLjava/util/List;Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->b:I

    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->g:Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->f:Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->e:Ljava/util/List;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->d:Z

    return-void
.end method

.method public final c()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->b:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->b:I

    iget v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->b:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c:Z

    iget-boolean v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->d:Z

    iget-boolean v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->d:Z

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->f:Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->f:Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->g:Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->g:Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/myinfo/SubscriptionData;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->e:Ljava/util/List;

    return-object v0
.end method

.method public final g()Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->f:Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    return-object v0
.end method

.method public final h()Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->g:Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->d:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->e:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->f:Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->g:Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyInfoUserData(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasNewCoupon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasRadioLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radioData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->f:Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", economyData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->g:Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
