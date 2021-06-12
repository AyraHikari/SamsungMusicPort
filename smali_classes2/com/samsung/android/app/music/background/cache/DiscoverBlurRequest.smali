.class public final Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest$Companion;

.field private static final f:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;


# instance fields
.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;

.field private final d:Landroid/net/Uri;

.field private final e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->a:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest$Companion;

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "Uri.EMPTY"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "Uri.EMPTY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "Uri.EMPTY"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "Uri.EMPTY"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    sput-object v0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->f:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "topLeftUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topRightUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomLeftUri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomRightUri"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->c:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->d:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->e:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()Landroid/net/Uri;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->b:Landroid/net/Uri;

    iget-object v1, p1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->c:Landroid/net/Uri;

    iget-object v1, p1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->d:Landroid/net/Uri;

    iget-object v1, p1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->d:Landroid/net/Uri;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->e:Landroid/net/Uri;

    iget-object p1, p1, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->e:Landroid/net/Uri;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->c:Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->d:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->e:Landroid/net/Uri;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscoverBlurRequest@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(topLeftUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topRightUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomLeftUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomRightUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
