.class public final Lq/R1;
.super Lq/T1;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lq/f2;


# static fields
.field public static final m:[Lq/i6;


# instance fields
.field public final a:I

.field public final b:Lq/C0;

.field public final c:Ljava/lang/String;

.field public final d:Lq/S1;

.field public final e:Lq/G1;

.field public final f:Z

.field public g:Lq/Q1;

.field public h:Lq/G1;

.field public i:Lq/G1;

.field public final j:Lq/V1;

.field public k:Lq/M1;

.field public l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lq/i6;->values()[Lq/i6;

    move-result-object v0

    sput-object v0, Lq/R1;->m:[Lq/i6;

    sget-object v0, Lq/Q1;->g:[Lq/Q1;

    array-length v0, v0

    invoke-static {}, Lq/B0;->values()[Lq/B0;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_11

    return-void

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Descriptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lq/C0;Lq/S1;Lq/G1;IZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lq/R1;->a:I

    iput-object p1, p0, Lq/R1;->b:Lq/C0;

    invoke-virtual {p1}, Lq/C0;->F()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lq/X1;->a(Lq/S1;Lq/G1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lq/R1;->c:Ljava/lang/String;

    iput-object p2, p0, Lq/R1;->d:Lq/S1;

    invoke-virtual {p1}, Lq/C0;->R()Z

    move-result p4

    if-eqz p4, :cond_2d

    iget p4, p1, Lq/C0;->h:I

    invoke-static {p4}, Lq/B0;->b(I)Lq/B0;

    move-result-object p4

    if-nez p4, :cond_23

    sget-object p4, Lq/B0;->b:Lq/B0;

    :cond_23
    iget p4, p4, Lq/B0;->a:I

    add-int/lit8 p4, p4, -0x1

    sget-object v0, Lq/Q1;->g:[Lq/Q1;

    aget-object p4, v0, p4

    iput-object p4, p0, Lq/R1;->g:Lq/Q1;

    :cond_2d
    iget-boolean p4, p1, Lq/C0;->o:Z

    iput-boolean p4, p0, Lq/R1;->f:Z

    iget p4, p1, Lq/C0;->f:I

    if-lez p4, :cond_bd

    const/4 p4, 0x0

    if-eqz p5, :cond_60

    invoke-virtual {p1}, Lq/C0;->J()Z

    move-result p5

    if-eqz p5, :cond_58

    iput-object p4, p0, Lq/R1;->h:Lq/G1;

    if-eqz p3, :cond_45

    iput-object p3, p0, Lq/R1;->e:Lq/G1;

    goto :goto_47

    :cond_45
    iput-object p4, p0, Lq/R1;->e:Lq/G1;

    :goto_47
    invoke-virtual {p1}, Lq/C0;->O()Z

    move-result p1

    if-nez p1, :cond_50

    iput-object p4, p0, Lq/R1;->j:Lq/V1;

    goto :goto_af

    :cond_50
    new-instance p1, Lq/K1;

    const-string p2, "FieldDescriptorProto.oneof_index set for extension field."

    invoke-direct {p1, p2, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw p1

    :cond_58
    new-instance p1, Lq/K1;

    const-string p2, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {p1, p2, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw p1

    :cond_60
    invoke-virtual {p1}, Lq/C0;->J()Z

    move-result p5

    if-nez p5, :cond_b5

    iput-object p3, p0, Lq/R1;->h:Lq/G1;

    invoke-virtual {p1}, Lq/C0;->O()Z

    move-result p5

    if-eqz p5, :cond_ab

    iget p5, p1, Lq/C0;->l:I

    if-ltz p5, :cond_91

    iget-object v0, p3, Lq/G1;->a:Lq/Q;

    iget-object v0, v0, Lq/Q;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_91

    invoke-virtual {p3}, Lq/G1;->k()Ljava/util/List;

    move-result-object p3

    iget p1, p1, Lq/C0;->l:I

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/V1;

    iput-object p1, p0, Lq/R1;->j:Lq/V1;

    iget p3, p1, Lq/V1;->f:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p1, Lq/V1;->f:I

    goto :goto_ad

    :cond_91
    new-instance p1, Lq/K1;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "FieldDescriptorProto.oneof_index is out of range for type "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lq/G1;->a:Lq/Q;

    invoke-virtual {p3}, Lq/Q;->C()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw p1

    :cond_ab
    iput-object p4, p0, Lq/R1;->j:Lq/V1;

    :goto_ad
    iput-object p4, p0, Lq/R1;->e:Lq/G1;

    :goto_af
    iget-object p1, p2, Lq/S1;->g:Lq/J1;

    invoke-virtual {p1, p0}, Lq/J1;->b(Lq/T1;)V

    return-void

    :cond_b5
    new-instance p1, Lq/K1;

    const-string p2, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {p1, p2, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw p1

    :cond_bd
    new-instance p1, Lq/K1;

    const-string p2, "Field numbers must be positive integers."

    invoke-direct {p1, p2, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw p1
.end method

.method public static f(Lq/R1;)V
    .registers 12

    const-string v0, "Couldn\'t parse default value: "

    const-string v1, "Unknown enum default value: \""

    iget-object v2, p0, Lq/R1;->b:Lq/C0;

    invoke-virtual {v2}, Lq/C0;->J()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "\" is not a message type."

    iget-object v6, p0, Lq/R1;->d:Lq/S1;

    const-string v7, "\""

    if-eqz v3, :cond_78

    iget-object v3, v6, Lq/S1;->g:Lq/J1;

    invoke-virtual {v2}, Lq/C0;->D()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, p0}, Lq/J1;->f(Ljava/lang/String;Lq/T1;)Lq/T1;

    move-result-object v3

    instance-of v8, v3, Lq/G1;

    if-eqz v8, :cond_5f

    check-cast v3, Lq/G1;

    iput-object v3, p0, Lq/R1;->h:Lq/G1;

    iget v8, v2, Lq/C0;->f:I

    iget-object v9, v3, Lq/G1;->k:[I

    invoke-static {v9, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    if-gez v9, :cond_31

    not-int v9, v9

    sub-int/2addr v9, v4

    :cond_31
    if-ltz v9, :cond_3a

    iget-object v3, v3, Lq/G1;->l:[I

    aget v3, v3, v9

    if-ge v8, v3, :cond_3a

    goto :goto_78

    :cond_3a
    new-instance v0, Lq/K1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lq/R1;->h:Lq/G1;

    iget-object v3, v3, Lq/G1;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" does not declare "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lq/C0;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_5f
    new-instance v0, Lq/K1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lq/C0;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_78
    :goto_78
    invoke-virtual {v2}, Lq/C0;->S()Z

    move-result v3

    if-eqz v3, :cond_123

    iget-object v3, v6, Lq/S1;->g:Lq/J1;

    invoke-virtual {v2}, Lq/C0;->H()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, p0}, Lq/J1;->f(Ljava/lang/String;Lq/T1;)Lq/T1;

    move-result-object v3

    invoke-virtual {v2}, Lq/C0;->R()Z

    move-result v6

    if-nez v6, :cond_bb

    instance-of v6, v3, Lq/G1;

    if-eqz v6, :cond_97

    sget-object v6, Lq/Q1;->d:Lq/Q1;

    iput-object v6, p0, Lq/R1;->g:Lq/Q1;

    goto :goto_bb

    :cond_97
    instance-of v6, v3, Lq/M1;

    if-eqz v6, :cond_a0

    sget-object v6, Lq/Q1;->f:Lq/Q1;

    iput-object v6, p0, Lq/R1;->g:Lq/Q1;

    goto :goto_bb

    :cond_a0
    new-instance v0, Lq/K1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lq/C0;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_bb
    :goto_bb
    iget-object v6, p0, Lq/R1;->g:Lq/Q1;

    iget-object v6, v6, Lq/Q1;->a:Lq/P1;

    sget-object v8, Lq/P1;->j:Lq/P1;

    if-ne v6, v8, :cond_f3

    instance-of v6, v3, Lq/G1;

    if-eqz v6, :cond_da

    check-cast v3, Lq/G1;

    iput-object v3, p0, Lq/R1;->i:Lq/G1;

    invoke-virtual {v2}, Lq/C0;->I()Z

    move-result v3

    if-nez v3, :cond_d2

    goto :goto_12f

    :cond_d2
    new-instance v0, Lq/K1;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_da
    new-instance v0, Lq/K1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lq/C0;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_f3
    sget-object v5, Lq/P1;->i:Lq/P1;

    if-ne v6, v5, :cond_11b

    instance-of v5, v3, Lq/M1;

    if-eqz v5, :cond_100

    check-cast v3, Lq/M1;

    iput-object v3, p0, Lq/R1;->k:Lq/M1;

    goto :goto_12f

    :cond_100
    new-instance v0, Lq/K1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lq/C0;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_11b
    new-instance v0, Lq/K1;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_123
    iget-object v3, p0, Lq/R1;->g:Lq/Q1;

    iget-object v3, v3, Lq/Q1;->a:Lq/P1;

    sget-object v5, Lq/P1;->j:Lq/P1;

    if-eq v3, v5, :cond_359

    sget-object v5, Lq/P1;->i:Lq/P1;

    if-eq v3, v5, :cond_359

    :goto_12f
    invoke-virtual {v2}, Lq/C0;->G()Lq/M0;

    move-result-object v3

    iget-boolean v3, v3, Lq/M0;->g:Z

    if-eqz v3, :cond_146

    invoke-virtual {p0}, Lq/R1;->n()Z

    move-result v3

    if-eqz v3, :cond_13e

    goto :goto_146

    :cond_13e
    new-instance v0, Lq/K1;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_146
    :goto_146
    invoke-virtual {v2}, Lq/C0;->I()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_2ed

    invoke-virtual {p0}, Lq/R1;->p()Z

    move-result v3

    if-nez v3, :cond_2e5

    const/16 v3, 0x22

    :try_start_156
    iget-object v7, p0, Lq/R1;->g:Lq/Q1;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7
    :try_end_15c
    .catch Ljava/lang/NumberFormatException; {:try_start_156 .. :try_end_15c} :catch_1b2

    const-string v8, "nan"

    const-string v9, "-inf"

    const-string v10, "inf"

    packed-switch v7, :pswitch_data_362

    goto/16 :goto_327

    :pswitch_167  #0xd
    :try_start_167
    iget-object v0, p0, Lq/R1;->k:Lq/M1;

    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lq/M1;->c:Lq/S1;

    iget-object v6, v6, Lq/S1;->g:Lq/J1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lq/M1;->b:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v6, v4, v0}, Lq/J1;->d(ILjava/lang/String;)Lq/T1;

    move-result-object v0

    instance-of v4, v0, Lq/O1;

    if-eqz v4, :cond_193

    move-object v5, v0

    check-cast v5, Lq/O1;

    :cond_193
    iput-object v5, p0, Lq/R1;->l:Ljava/lang/Object;

    if-eqz v5, :cond_199

    goto/16 :goto_327

    :cond_199
    new-instance v0, Lq/K1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0
    :try_end_1b2
    .catch Ljava/lang/NumberFormatException; {:try_start_167 .. :try_end_1b2} :catch_1b2

    :catch_1b2
    move-exception v0

    goto/16 :goto_2c7

    :pswitch_1b5  #0xb
    :try_start_1b5
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lq/N4;->d(Ljava/lang/String;)Lq/B;

    move-result-object v1

    iput-object v1, p0, Lq/R1;->l:Ljava/lang/Object;
    :try_end_1bf
    .catch Lq/K4; {:try_start_1b5 .. :try_end_1bf} :catch_1c1
    .catch Ljava/lang/NumberFormatException; {:try_start_1b5 .. :try_end_1bf} :catch_1b2

    goto/16 :goto_327

    :catch_1c1
    move-exception v1

    :try_start_1c2
    new-instance v4, Lq/K1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v4

    :pswitch_1db  #0x9, 0xa
    new-instance v0, Lq/K1;

    const-string v1, "Message type had default value."

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :pswitch_1e3  #0x8
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :pswitch_1eb  #0x7
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :pswitch_1f7  #0x6, 0xc
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v6}, Lq/N4;->c(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :pswitch_208  #0x4, 0xe, 0x10
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v6}, Lq/N4;->c(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :pswitch_219  #0x3, 0x5
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v4}, Lq/N4;->c(Ljava/lang/String;ZZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :pswitch_229  #0x2, 0xf, 0x11
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lq/N4;->c(Ljava/lang/String;ZZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :pswitch_239  #0x1
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    const/high16 v0, 0x7f800000  # Float.POSITIVE_INFINITY

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :cond_24d
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_261

    const/high16 v0, -0x800000  # Float.NEGATIVE_INFINITY

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :cond_261
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_275

    const/high16 v0, 0x7fc00000  # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :cond_275
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :pswitch_281  #0x0
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_295

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :cond_295
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a9

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto/16 :goto_327

    :cond_2a9
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bc

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto :goto_327

    :cond_2bc
    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;
    :try_end_2c6
    .catch Ljava/lang/NumberFormatException; {:try_start_1c2 .. :try_end_2c6} :catch_1b2

    goto :goto_327

    :goto_2c7
    new-instance v1, Lq/K1;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse default value: \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lq/C0;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_2e5
    new-instance v0, Lq/K1;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_2ed
    invoke-virtual {p0}, Lq/R1;->p()Z

    move-result v0

    if-eqz v0, :cond_2fa

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto :goto_327

    :cond_2fa
    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_315

    const/16 v1, 0x8

    if-eq v0, v1, :cond_312

    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    iget-object v0, v0, Lq/P1;->a:Ljava/io/Serializable;

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    goto :goto_327

    :cond_312
    iput-object v5, p0, Lq/R1;->l:Ljava/lang/Object;

    goto :goto_327

    :cond_315
    iget-object v0, p0, Lq/R1;->k:Lq/M1;

    iget-object v0, v0, Lq/M1;->d:[Lq/O1;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    :goto_327
    iget-object v0, p0, Lq/R1;->h:Lq/G1;

    if-eqz v0, :cond_358

    iget-object v0, v0, Lq/G1;->a:Lq/Q;

    invoke-virtual {v0}, Lq/Q;->D()Lq/Z0;

    move-result-object v0

    iget-boolean v0, v0, Lq/Z0;->f:Z

    if-eqz v0, :cond_358

    invoke-virtual {v2}, Lq/C0;->J()Z

    move-result v0

    if-eqz v0, :cond_350

    invoke-virtual {p0}, Lq/R1;->m()Z

    move-result v0

    if-eqz v0, :cond_348

    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    sget-object v1, Lq/Q1;->d:Lq/Q1;

    if-ne v0, v1, :cond_348

    goto :goto_358

    :cond_348
    new-instance v0, Lq/K1;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_350
    new-instance v0, Lq/K1;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    :cond_358
    :goto_358
    return-void

    :cond_359
    new-instance v0, Lq/K1;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, v1, p0}, Lq/K1;-><init>(Ljava/lang/String;Lq/T1;)V

    throw v0

    nop

    :pswitch_data_362
    .packed-switch 0x0
        :pswitch_281  #00000000
        :pswitch_239  #00000001
        :pswitch_229  #00000002
        :pswitch_219  #00000003
        :pswitch_208  #00000004
        :pswitch_219  #00000005
        :pswitch_1f7  #00000006
        :pswitch_1eb  #00000007
        :pswitch_1e3  #00000008
        :pswitch_1db  #00000009
        :pswitch_1db  #0000000a
        :pswitch_1b5  #0000000b
        :pswitch_1f7  #0000000c
        :pswitch_167  #0000000d
        :pswitch_208  #0000000e
        :pswitch_229  #0000000f
        :pswitch_208  #00000010
        :pswitch_229  #00000011
    .end packed-switch
.end method


# virtual methods
.method public final b()Lq/S1;
    .registers 2

    iget-object v0, p0, Lq/R1;->d:Lq/S1;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/R1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lq/R1;

    iget-object v0, p1, Lq/R1;->h:Lq/G1;

    iget-object v1, p0, Lq/R1;->h:Lq/G1;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lq/R1;->b:Lq/C0;

    iget v0, v0, Lq/C0;->f:I

    iget-object p1, p1, Lq/R1;->b:Lq/C0;

    iget p1, p1, Lq/C0;->f:I

    sub-int/2addr v0, p1

    return v0

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/R1;->b:Lq/C0;

    invoke-virtual {v0}, Lq/C0;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lq/c;
    .registers 2

    iget-object v0, p0, Lq/R1;->b:Lq/C0;

    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v1, Lq/P1;->j:Lq/P1;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lq/R1;->l:Ljava/lang/Object;

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Lq/M1;
    .registers 4

    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v1, Lq/P1;->i:Lq/P1;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lq/R1;->k:Lq/M1;

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This field is not of enum type. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lq/R1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Lq/i6;
    .registers 3

    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lq/R1;->m:[Lq/i6;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final j()Lq/G1;
    .registers 4

    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    iget-object v0, v0, Lq/Q1;->a:Lq/P1;

    sget-object v1, Lq/P1;->j:Lq/P1;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lq/R1;->i:Lq/G1;

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This field is not of message type. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lq/R1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()Z
    .registers 4

    invoke-virtual {p0}, Lq/R1;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    sget-object v2, Lq/Q1;->d:Lq/Q1;

    if-eq v0, v2, :cond_1f

    sget-object v2, Lq/Q1;->c:Lq/Q1;

    if-eq v0, v2, :cond_1f

    iget-object v0, p0, Lq/R1;->j:Lq/V1;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lq/R1;->d:Lq/S1;

    invoke-virtual {v0}, Lq/S1;->h()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    :cond_1f
    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public final l()Z
    .registers 3

    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    sget-object v1, Lq/Q1;->d:Lq/Q1;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lq/R1;->p()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lq/R1;->j()Lq/G1;

    move-result-object v0

    iget-object v0, v0, Lq/G1;->a:Lq/Q;

    invoke-virtual {v0}, Lq/Q;->D()Lq/Z0;

    move-result-object v0

    iget-boolean v0, v0, Lq/Z0;->i:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public final m()Z
    .registers 4

    iget-object v0, p0, Lq/R1;->b:Lq/C0;

    iget v0, v0, Lq/C0;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    sget-object v0, Lq/A0;->b:Lq/A0;

    const/4 v0, 0x0

    goto :goto_19

    :cond_11
    sget-object v0, Lq/A0;->c:Lq/A0;

    goto :goto_19

    :cond_14
    sget-object v0, Lq/A0;->d:Lq/A0;

    goto :goto_19

    :cond_17
    sget-object v0, Lq/A0;->b:Lq/A0;

    :goto_19
    if-nez v0, :cond_1d

    sget-object v0, Lq/A0;->b:Lq/A0;

    :cond_1d
    sget-object v2, Lq/A0;->b:Lq/A0;

    if-ne v0, v2, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method public final n()Z
    .registers 2

    invoke-virtual {p0}, Lq/R1;->p()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lq/R1;->i()Lq/i6;

    move-result-object v0

    invoke-virtual {v0}, Lq/i6;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public final o()Z
    .registers 5

    invoke-virtual {p0}, Lq/R1;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lq/R1;->d:Lq/S1;

    invoke-virtual {v0}, Lq/S1;->h()I

    move-result v0

    iget-object v2, p0, Lq/R1;->b:Lq/C0;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1a

    invoke-virtual {v2}, Lq/C0;->G()Lq/M0;

    move-result-object v0

    iget-boolean v0, v0, Lq/M0;->g:Z

    return v0

    :cond_1a
    invoke-virtual {v2}, Lq/C0;->G()Lq/M0;

    move-result-object v0

    invoke-virtual {v0}, Lq/M0;->K()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v2}, Lq/C0;->G()Lq/M0;

    move-result-object v0

    iget-boolean v0, v0, Lq/M0;->g:Z

    if-eqz v0, :cond_2d

    :cond_2c
    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method public final p()Z
    .registers 4

    iget-object v0, p0, Lq/R1;->b:Lq/C0;

    iget v0, v0, Lq/C0;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    sget-object v0, Lq/A0;->b:Lq/A0;

    const/4 v0, 0x0

    goto :goto_19

    :cond_11
    sget-object v0, Lq/A0;->c:Lq/A0;

    goto :goto_19

    :cond_14
    sget-object v0, Lq/A0;->d:Lq/A0;

    goto :goto_19

    :cond_17
    sget-object v0, Lq/A0;->b:Lq/A0;

    :goto_19
    if-nez v0, :cond_1d

    sget-object v0, Lq/A0;->b:Lq/A0;

    :cond_1d
    sget-object v2, Lq/A0;->c:Lq/A0;

    if-ne v0, v2, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method public final q()Z
    .registers 3

    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    sget-object v1, Lq/Q1;->f:Lq/Q1;

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lq/R1;->d:Lq/S1;

    invoke-virtual {v0}, Lq/S1;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public final r()Z
    .registers 5

    iget-object v0, p0, Lq/R1;->g:Lq/Q1;

    sget-object v1, Lq/Q1;->b:Lq/Q1;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Lq/R1;->h:Lq/G1;

    iget-object v0, v0, Lq/G1;->a:Lq/Q;

    invoke-virtual {v0}, Lq/Q;->D()Lq/Z0;

    move-result-object v0

    iget-boolean v0, v0, Lq/Z0;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    return v1

    :cond_16
    iget-object v0, p0, Lq/R1;->d:Lq/S1;

    invoke-virtual {v0}, Lq/S1;->h()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_20

    return v1

    :cond_20
    iget-object v0, v0, Lq/S1;->a:Lq/P0;

    invoke-virtual {v0}, Lq/P0;->D()Lq/W0;

    move-result-object v0

    iget-boolean v0, v0, Lq/W0;->j:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/R1;->c:Ljava/lang/String;

    return-object v0
.end method
