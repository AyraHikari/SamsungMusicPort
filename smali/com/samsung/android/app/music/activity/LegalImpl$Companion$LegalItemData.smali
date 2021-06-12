.class public final Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/LegalImpl$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LegalItemData"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "settingKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->d:Z

    iput-boolean p5, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->d:Z

    iget-boolean v3, p1, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->d:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->e:Z

    iget-boolean p1, p1, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->e:Z

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->e:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LegalItemData(settingKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mandatory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
