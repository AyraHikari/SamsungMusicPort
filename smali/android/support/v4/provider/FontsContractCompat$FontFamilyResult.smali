.class public Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontFamilyResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult$FontResultStatus;
    }
.end annotation


# static fields
.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_UNEXPECTED_DATA_PROVIDED:I = 0x2

.field public static final STATUS_WRONG_CERTIFICATES:I = 0x1


# instance fields
.field private final mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(I[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)V
    .locals 0
    .param p2    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput p1, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    .line 426
    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    return-void
.end method


# virtual methods
.method public getFonts()[Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .locals 1

    .line 434
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 430
    iget v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    return v0
.end method
