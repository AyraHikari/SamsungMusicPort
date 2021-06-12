.class public final Lkotlin/random/Random$Companion;
.super Lkotlin/random/Random;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/random/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final c:Lkotlin/random/Random$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    new-instance v0, Lkotlin/random/Random$Companion;

    invoke-direct {v0}, Lkotlin/random/Random$Companion;-><init>()V

    sput-object v0, Lkotlin/random/Random$Companion;->c:Lkotlin/random/Random$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Lkotlin/random/Random;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 273
    sget-object v0, Lkotlin/random/Random;->b:Lkotlin/random/Random$Default;

    invoke-virtual {v0, p1}, Lkotlin/random/Random$Default;->a(I)I

    move-result p1

    return p1
.end method
