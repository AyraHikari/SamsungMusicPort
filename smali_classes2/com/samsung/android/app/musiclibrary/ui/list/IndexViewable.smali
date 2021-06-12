.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$BasicIndexViewable;,
        Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;->a:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;->b:I

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;->c:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 348
    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;-><init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;-><init>(Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;->b:I

    return v0
.end method

.method public final c()Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;->c:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewUi;

    return-object v0
.end method
