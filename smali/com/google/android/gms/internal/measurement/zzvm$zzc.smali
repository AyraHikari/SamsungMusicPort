.class public abstract Lcom/google/android/gms/internal/measurement/zzvm$zzc;
.super Lcom/google/android/gms/internal/measurement/zzvm;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzwv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzvm$zzc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzvm<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/zzwv;"
    }
.end annotation


# instance fields
.field protected zzbys:Lcom/google/android/gms/internal/measurement/zzvd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzvd<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvm;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvd;->a()Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zzc;->zzbys:Lcom/google/android/gms/internal/measurement/zzvd;

    return-void
.end method
