.class public final Lkotlin/ranges/IntProgression$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/ranges/IntProgression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lkotlin/ranges/IntProgression$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lkotlin/ranges/IntProgression;
    .locals 1

    .line 122
    new-instance v0, Lkotlin/ranges/IntProgression;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/ranges/IntProgression;-><init>(III)V

    return-object v0
.end method
