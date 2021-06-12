.class final Lcom/google/firebase/components/zzl$zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/events/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/zzl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/firebase/events/Publisher;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/firebase/events/Publisher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lcom/google/firebase/events/Publisher;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/firebase/components/zzl$zza;->a:Ljava/util/Set;

    .line 93
    iput-object p2, p0, Lcom/google/firebase/components/zzl$zza;->b:Lcom/google/firebase/events/Publisher;

    return-void
.end method
