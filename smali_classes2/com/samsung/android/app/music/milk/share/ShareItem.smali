.class public Lcom/samsung/android/app/music/milk/share/ShareItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/share/ShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/share/ShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/ShareItem;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/share/ShareItem;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/share/ShareItem;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/milk/share/ShareItem;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 7
    move-object p4, v0

    check-cast p4, Ljava/lang/String;

    :cond_0
    move-object v5, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 8
    move-object p5, v0

    check-cast p5, Ljava/lang/String;

    :cond_1
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/share/ShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareItem;->e:Ljava/lang/String;

    return-object v0
.end method
